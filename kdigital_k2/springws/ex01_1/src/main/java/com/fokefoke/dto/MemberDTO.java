package com.fokefoke.dto;

import java.sql.Date;

public class MemberDTO {
		
		// 회원 기본 정보
		private String memberId;
		private String memberPw;
		private String memberName;
		private Date birth;
		private String phone;
		
		// 관리자 구분(0:일반사용자, 1:관리자)
		private int adminCk;

		// 마케팅 동의 여부(0:false, 1:true)
		private int consentPush;
		private int consentEmail;
		private int consentSMS;
		
		// 예비 변수
		private int money;
		private int point;
		
		
		public String getMemberId() {
			return memberId;
		}
		public void setMemberId(String memberId) {
			this.memberId = memberId;
		}
		public String getMemberPw() {
			return memberPw;
		}
		public void setMemberPw(String memberPw) {
			this.memberPw = memberPw;
		}
		public String getMemberName() {
			return memberName;
		}
		public void setMemberName(String memberName) {
			this.memberName = memberName;
		}
		public Date getBirth() {
			return birth;
		}
		public void setBirth(Date birth) {
			this.birth = birth;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public int getAdminCk() {
			return adminCk;
		}
		public void setAdminCk(int adminCk) {
			this.adminCk = adminCk;
		}
		public int getConsentPush() {
			return consentPush;
		}
		public void setConsentPush(int consentPush) {
			this.consentPush = consentPush;
		}
		public int getConsentEmail() {
			return consentEmail;
		}
		public void setConsentEmail(int consentEmail) {
			this.consentEmail = consentEmail;
		}
		public int getConsentSMS() {
			return consentSMS;
		}
		public void setConsentSMS(int consentSMS) {
			this.consentSMS = consentSMS;
		}
		public int getMoney() {
			return money;
		}
		public void setMoney(int money) {
			this.money = money;
		}
		public int getPoint() {
			return point;
		}
		public void setPoint(int point) {
			this.point = point;
		}
		
		@Override
		public String toString() {
			return "MemberDTO [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" + memberName
					+ ", birth=" + birth + ", phone=" + phone + ", adminCk=" + adminCk + ", consentPush=" + consentPush
					+ ", consentEmail=" + consentEmail + ", consentSMS=" + consentSMS + ", money=" + money + ", point="
					+ point + "]";
		}
		
}
