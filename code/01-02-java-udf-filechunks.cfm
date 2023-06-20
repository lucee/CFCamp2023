<cfscript>

	void function copy(String input, lucee.runtime.type.UDF listener, String charset, int blockSize) type="java" {
		java.io.FileInputStream fis = new java.io.FileInputStream(input);
		try {
			java.nio.charset.Charset cs = lucee.commons.io.CharsetUtil.toCharset(charset);
			byte[] buffer = new byte[blockSize];
			int len;
			java.io.ByteArrayOutputStream baos = new java.io.ByteArrayOutputStream();
			while ((len = fis.read(buffer)) != -1) {
				baos.reset();
				baos.write(buffer, 0, len);
				baos.flush();
				listener.call(pc, new Object[] { new String(baos.toByteArray()), cs }, false);
			}
		}
		finally {
			lucee.commons.io.IOUtil.closeEL(fis);
		}
	}

	function myListener(chunk) {
		dump(chunk);
	}
	copy(getCurrentTemplatePath(),myListener, "UTF-8", 100);

</cfscript>
 