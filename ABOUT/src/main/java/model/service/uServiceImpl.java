package model.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import model.dao.DocumentDAO;
import model.dao.HashPhotoDAO;
import model.dao.HashPhotoViewDAO;
import model.dao.HashVideoDAO;
import model.dao.HashVideoViewDAO;
import model.dao.PhotoDAO;
import model.dao.VideoDAO;
import model.domain.HashPhotoViewDTO;
import model.domain.HashVideoViewDTO;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service("uService")
public class uServiceImpl implements uService{
	
	@Resource(name="uDao")
	private PhotoDAO uDao;
	
	@Resource(name="dDao")
	private DocumentDAO dDao;
	
	@Resource(name="vDao")
	private VideoDAO vDao;
	
	@Resource(name="hpDao")
	private HashPhotoDAO hpDao;
	
	@Resource(name="hvDao")
	private HashVideoDAO hvDao;
	
	@Resource(name="hpvDao")
	private HashPhotoViewDAO hpvDao;
	
	@Resource(name="hvvDao")
	private HashVideoViewDAO hvvDao;
	
	public List<String> uploadPhoto(ServletContext scontext, List<MultipartFile> file, String hidden,String pYear, String pMonth, String pDay, String comment, String id, String hash){
		System.out.println("uServiceImpl : " + scontext + " " + file);
		
		List<String> fileNames = new ArrayList<String>();
		List fileSizes = new ArrayList();
		List<String> fullPathNames = new ArrayList<String>();
		
		String realFolder = "";
		String savefile = "img";
		String fullpath = null;
		realFolder = scontext.getRealPath(savefile);	
		System.out.println("realFoler : " + realFolder);
		
		String path="";
		UUID randomeUUID = UUID.randomUUID();
		double num = Math.random();
		
		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		String organizedfilePath="";
		String fileName;
		
		//hash code
		/*String[] ex = comment.split(" ");
		String ex2 = "";
		for(int i = 0; i<ex.length; i++){
			System.out.println("String[] ex " + ex[i]);
			if(ex[i].startsWith("#")){	//만약에 들어간다면
				//#star#hihi hoho #koko
				ex2 = ex2.concat(ex[i]);
				System.out.println("ex2 " + ex2);
			}
		}
		String[] hash = ex2.split("#");
		for(int i=1; i<hash.length; i++){
			System.out.println("hash : " + hash[i]);
		}*/
		
		String[] fhash = hash.split("#");
		for(int i=1; i<fhash.length; i++){
			System.out.println("hash : " + fhash[i]);
		}
		
		//file upload code
		if (file.size() == 1 && file.get(0).getOriginalFilename().equals("")) {

		} else {
			for (int i = 0; i < file.size(); i++) {
				
				String originalfileName = file.get(i).getOriginalFilename();	//오리지날 파일 이름
				long fileSize = file.get(i).getSize();	//파일 크기
				
				path = realFolder;
				System.out.println("path : " + path);
				
				try {
					inputStream = file.get(i).getInputStream();
				} catch (IOException e) {
					e.printStackTrace();
				}
				File realUploadDir = new File(path);
				
				if (!realUploadDir.exists()) {
					realUploadDir.mkdirs();// 폴더생성.
				}
				
				organizedfilePath = path + "/" + randomeUUID + "_" + originalfileName;	 //파일이 저장된경로 + 파일 명
				fileName = randomeUUID + "_" + file.get(i).getOriginalFilename();
				System.out.println("오리지날파일이름 " + originalfileName);
				System.out.println("파일사이즈 " + fileSize);
				System.out.println("파일경로 " + organizedfilePath);
				
				try {
					outputStream = new FileOutputStream(organizedfilePath);
					
					int readByte = 0;
					byte[] buffer = new byte[8192];

					try {
						while ((readByte = inputStream.read(buffer, 0, 8120)) != -1) {
							outputStream.write(buffer, 0, readByte); // 파일 생성 !
						}
					} catch (IOException e) {
						e.printStackTrace();
					}
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				}
				fullpath = "./img/" + fileName;
				fullPathNames.add(i, fullpath);
				fileNames.add(i, fileName);
				fileSizes.add(i, fileSize);
			}	//for
		}	//else
		System.out.println("Controller : hidden " + hidden);
		if(hidden.equals("3")){
			System.out.println("사이즈 : " + fileNames.size() + " 파일 이름 : " + fileNames);
			List<String> imgPaths = new ArrayList<String>();
			List<String> o = new ArrayList<String>();
			for(int i = 0; i<fileNames.size(); i++){
				String ext = fileNames.get(i).substring(fileNames.get(i).length()-3).toLowerCase();
				System.out.println("ext : " + ext);
				
				if(ext.equals("hwp")){	
					imgPaths.add(i, "./images/docImg/hwp.jpg");	//한글파일
				}else if(ext.equals("xls") || ext.equals("lsx")){	
					imgPaths.add(i, "./images/docImg/xls.jpg");	//엑셀파일
				}else if(ext.equals("doc") || ext.equals("ocx") || ext.equals("dot") || ext.equals("otx")){
					imgPaths.add(i, "./images/docImg/doc.jpg");	//ms word파일
				}else if(ext.equals("ppt") || ext.equals("ptx") || ext.equals("pot") || ext.equals("pps") || ext.equals("psx")){
					imgPaths.add(i, "./images/docImg/ppt.jpg");	//ppt 파일
				}else if(ext.equals("pdf")){			
					imgPaths.add(i, "./images/docImg/pdf.jpg");	//pdf 파일
				}else{
					System.out.println(" ext : " + ext + "는 지원하지 않는 확장자입니다.");
				}
			}
			
			o = dDao.uploadDocument(fileNames, fileSizes, fullPathNames);
			//(xls, lsx), hwp,( doc, docx, dot, dotx ), (ppt, pptx, pot, pps, ppsx), pdf
			return imgPaths;
		}else if(hidden.equals("2")){
			fullPathNames = vDao.uploadVideo(fileNames, fileSizes, fullPathNames, pYear, pMonth, pDay, comment, id);
			hvDao.insertHash(fhash, vDao.selectVideo(fileNames), id);	//hash table에 insert
			return fullPathNames;	//fullPathNames return
		}else {
			fullPathNames =  uDao.uploadPhoto(fileNames, fileSizes, fullPathNames, pYear, pMonth, pDay, comment, id);
			hpDao.insertHash(fhash, uDao.selectPhoto(fileNames), id);
			return fullPathNames;
		}
	}
	
	//hash선택
	public List<Object> selectHashTag(String hash, String email){
		System.out.println("uService에서 hash : " + hash);
		
		List<HashPhotoViewDTO> obj = new ArrayList<HashPhotoViewDTO>();
		obj = hpvDao.selectHashTag(hash, email);
		
		System.out.println("hashPhoto after " + obj);
		
		List<HashVideoViewDTO> obj2 = new ArrayList<HashVideoViewDTO>();
		obj2 = hvvDao.selectHashTag(hash, email);
		
		List<Object> totalObj = new ArrayList<Object>();
		for(int i=0; i<obj.size(); i++){
			totalObj.add(i, obj.get(i));
		}
		int j=obj.size();
		for(int i=0; i<obj2.size(); i++){
			totalObj.add(j, obj2.get(i));
		}
		
		System.out.println("최종 : " + totalObj);
		//fullPathNames += vDao.selectVideoPath()
		return totalObj;
	}
}
