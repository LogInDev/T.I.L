package helloAPI;

public class ObjOverride {
	int obj_var;

	public ObjOverride(int obj_var) {
		
		this.obj_var = obj_var;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof ObjOverride) {
			ObjOverride oo = (ObjOverride)obj;
			if(this.obj_var ==oo.obj_var) {
				return true;
			}else {
				return false;
			}
		}else {
			return false;
		}
	}
}
