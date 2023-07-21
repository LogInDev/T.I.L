package test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonTest {
	 
	public static void main(String[] args) throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		// 1. Map -> JSON
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("kim1", 40);
		map.put("kim2", 41);
		map.put("kim3", 42);
		String mJson = mapper.writeValueAsString(map);
		System.out.println(mJson);
		
		// 2. DTO -> JSON
		PersonDTO p1 = new PersonDTO("hong1", 20);
		PersonDTO p2 = new PersonDTO("hong2", 21);
		PersonDTO p3 = new PersonDTO("hong3", 22);
		
		String pJson = mapper.writeValueAsString(p1);
		System.out.println(pJson);
		
		// 3. List<DTO> -> JSON
		List<PersonDTO> pList = new ArrayList<PersonDTO>();
		pList.add(p1);
		pList.add(p2);
		pList.add(p3);
		
		String listJson = mapper.writeValueAsString(pList);
		System.out.println(listJson);
		
		
	}

}
