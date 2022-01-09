package testing_system_8;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class MyMap<A, B> {
	Map<A, B> m;
	public MyMap(A key, B value)
	{
		m = new HashMap<A , B>();
		m.put(key, value);
	}
	public Set GetKey() {
		return m.keySet();
	}
	public B GetValue()
	{
		Set set = m.keySet();
		for (Object key : set) {
			return m.get(key);
		}
		return null;
	}
	
}
