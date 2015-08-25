package com.note.action;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.imageio.ImageIO;

import org.apache.struts2.ServletActionContext;
import com.note.util.Constants;

/**
 * Sample action that shows how to do file upload with Struts 2.
 */
public class FileUploadAction extends BaseAction {
    private static final long serialVersionUID = -9208910183310010569L;
    private File file;
    private String fileContentType;
    private String fileFileName;
    private String name;
    private String fileType;
    private String localPath;

	private String getUploadFolder() {
		String path="/resources/bookcover";
		/*if(fileType.equals(Constants.AUTH_TYPE[1])){
			path="/resources/certificate/";
		}*/
		return path;
	}

	public String uploadFiles() throws Exception {
		clearErrorsAndMessages();
		String path = getUploadFolder();

		String uploadDir = ServletActionContext.getServletContext()
				.getRealPath(path)
				+ "/";

		File dirPath = new File(uploadDir);

		if (!dirPath.exists()) {
			dirPath.mkdirs();
		}
		String date = new SimpleDateFormat("yyyyMMddHHmmss").format(Calendar
				.getInstance().getTime());
		fileFileName = date + fileFileName;

		File filePath = new File(uploadDir + fileFileName);
		if (!filePath.exists()) {
			InputStream stream = new FileInputStream(file);

			OutputStream bos = new FileOutputStream(uploadDir + fileFileName);
			int bytesRead;
			byte[] buffer = new byte[8192];
			while ((bytesRead = stream.read(buffer, 0, 8192)) != -1) {
				bos.write(buffer, 0, bytesRead);
			}
			bos.close();
			stream.close();
			setLocalPath(dirPath.getAbsolutePath() + Constants.FILE_SEP
					+ fileFileName);
			// 处理图像大小
			int middleWidth = 102;
			int middleHeight = 145;
			int smallWidth = 67;
			int smallHeight = 97;
			String middlePath = uploadDir + "mpic/m" + fileFileName;
			saveImage(file, middleWidth, middleHeight, middlePath);
			String smallPath = uploadDir + "spic/s" + fileFileName;
			saveImage(file, smallWidth, smallHeight, smallPath);
			// 删除上传文件
			if (filePath.exists()) {
				filePath.delete();
			}
			return path+"/mpic/m" + fileFileName;
		} else {
			addActionMessage("文件有重名，请重新命名文件！");
			return "cancel";
		}

	}
	public String uploadEbook() throws Exception {
		clearErrorsAndMessages();
		String path = "/resources/ebook";

		String uploadDir = ServletActionContext.getServletContext()
				.getRealPath(path)
				+ "/";
		File dirPath = new File(uploadDir);

		if (!dirPath.exists()) {
			dirPath.mkdirs();
		}
		String date = new SimpleDateFormat("yyyyMMddHHmmss").format(Calendar
				.getInstance().getTime());
		fileFileName = date + fileFileName;

		File filePath = new File(uploadDir + fileFileName);
		if (!filePath.exists()) {
			InputStream stream = new FileInputStream(file);

			OutputStream bos = new FileOutputStream(uploadDir + fileFileName);
			int bytesRead;
			byte[] buffer = new byte[8192];
			while ((bytesRead = stream.read(buffer, 0, 8192)) != -1) {
				bos.write(buffer, 0, bytesRead);
			}
			bos.close();
			stream.close();
			setLocalPath(dirPath.getAbsolutePath() + Constants.FILE_SEP
					+ fileFileName);
			
			return path+"/" + fileFileName;
		} else {
			addActionMessage("文件有重名，请重新命名文件！");
			return "cancel";
		}

	}

	private void saveImage(File file, int width, int height, String path) {
		try {
			BufferedImage Bi = ImageIO.read(file);
			Image middleImage = Bi.getScaledInstance(width, height,
					Image.SCALE_DEFAULT);
			BufferedImage tag = new BufferedImage(width, height,
					BufferedImage.TYPE_INT_RGB);
			Graphics g = tag.getGraphics();
			g.drawImage(middleImage, 0, 0, null);
			g.dispose();
			ImageIO.write(tag, "JPEG", new File(path));
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

    public void setFile(File file) {
        this.file = file;
    }

    public void setFileContentType(String fileContentType) {
        this.fileContentType = fileContentType;
    }

    public void setFileFileName(String fileFileName) {
        this.fileFileName = fileFileName;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public File getFile() {
        return file;
    }

    public String getFileContentType() {
        return fileContentType;
    }

    public String getFileFileName() {
        return fileFileName;
    }
    public String getLocalPath() {
		return localPath;
	}

	public void setLocalPath(String localPath) {
		this.localPath = localPath;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

    @Override
    public void validate() {
        if (getRequest().getMethod().equalsIgnoreCase("post")) {
           /* getFieldErrors().clear();
            if ("".equals(fileFileName) || file == null) {
            	super.addFieldError("file", getText("errors.requiredField", new String[] {getText("uploadForm.file")}));
            } else if (file.length() > 2097152) {
                addActionError(getText("maxLengthExceeded"));
            }*/
        }
    }
}

