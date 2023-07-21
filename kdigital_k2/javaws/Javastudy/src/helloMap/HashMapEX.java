package helloMap;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class HashMapEX {

	public static void main(String[] args) {
		Map map = new HashMap();
		String [] names = {"홍","김","이","강","을지","김"};
		int[] nums = {1234, 2222, 1346, 45456, 12122,66666};

		//map에 K,V넣기
		for(int i=0;i<names.length;i++) {
			map.put(names[i], nums[i]);
		}
		//		System.out.println(map.size());//5출력 - 중복값 사라짐
//		System.out.println(map);//순서 상관X, 66666출력 - 마지막 데이터만 출력
		//key값을 Hash값으로 만들어서 저장("김"의 Hash값이 같아서 마지막 데이터로 덮어씀)
		//		System.out.println(map.get("홍"));

		//순서 만들기 -> map의 key값을 Set자료형으로 변환
		Set<String> keys = map.keySet();
		for(String key:keys) {
			//			System.out.println("{"+key+": "+map.get(key)+"} ");
		}

		//key값 Iterator로 변환
		//		Iterator<String> it = map.keySet().iterator();
		Iterator<String> it = keys.iterator();
		while(it.hasNext()) {
			String key = (String) it.next();
//			System.out.println("{"+key+": "+map.get(key)+"} ");
		}

		//value값만 가져오기
		Collection<Integer> values = map.values();
		for(Integer v:values) {
//			System.out.println(v);
		}

		//Iterator로 변환
		Iterator<Integer> it2 = values.iterator();
		while (it2.hasNext()) {
			Integer v = (Integer)it2.next();
//			System.out.print(v+ " ");

		}

		//key, value를 한번에 가져올 때 : .entrySet() -> Set<Map.Entry<K,V>> 리턴
		Set<Map.Entry> entry = map.entrySet();
		for(Map.Entry  e : entry) {
			String key = (String)e.getKey();
			Integer value = (Integer)e.getValue();
			System.out.println("{"+key+"= "+value+"} ");
		}

	}

}
