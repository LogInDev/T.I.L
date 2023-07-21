package helloException;

public class UnsupportedFunctionException extends RuntimeException{
	final private int ERR_CODE;
	
	public UnsupportedFunctionException(String msg, int e) {
		super(msg);
		ERR_CODE = e;
		
		
	}
	 public UnsupportedFunctionException(String msg) {
		this(msg,100);
	}
	
	public int getErrorCode() {
		return this.ERR_CODE;
	}
	
	public String getMessage() {
		return "["+getErrorCode()+"]"+super.getMessage();
	}
}
