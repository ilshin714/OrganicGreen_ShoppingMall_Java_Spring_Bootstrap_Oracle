package bean;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import mybatis.MybatisFactory;

/**
 * @author ilshin714
 *
 */
public class ManagerDao {
	SqlSession sqlSession;

	Param para;
	ManagerParam param;
	// 페이징 처리용 변수
	int totListSize;
	int totListSizeU;
	int totListSizeS;
	int totListSizeQ;
	int totListSizeN;
	int totPage;
	int listSize = 5;
	int nowPage = 1;
	int startNo;
	int endNo;
	String findStr = "";
	
	//파일 업로드를 위한 멀티파트 
	MultipartRequest multi;
	RproductVo rVo = null;
	MproductVo mVo = null;
	//파일 업로드를 위한 변수 
	String saveDir = "C:/Users/NONG/Desktop/SHS/workspace/final_project/WebContent/images/rproduct_photo/";
	int maxSize = 1024*1024*100; //100mb
	String encoding = "utf-8";

	
	public ManagerDao() {
		try {
			sqlSession = MybatisFactory.getFactory().openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 판매자 인덱스 - 배송현황 리스트 뽑기
	public ArrayList<DeliveryVo> searchDelivery(ManagerParam p) {
		ArrayList<DeliveryVo> list = new ArrayList<DeliveryVo>();
		this.param = p;
		this.nowPage = p.getNowPage();
		
		try {
			// 페이징
			totListSize = sqlSession.selectOne("manager.totPageDelivery", param);
			totPage = (int) Math.ceil(totListSize / (double) listSize);
			
			if (nowPage < 1) {
				nowPage = 1;
			}
			if (nowPage > totPage) {
				nowPage = totPage;
			}
			endNo = nowPage * listSize;
			startNo = endNo - (listSize - 1);
			
			param.setStartNo(startNo);
			param.setEndNo(endNo);
			param.setNowPage(nowPage);
			param.setTotPage(totPage);
			
			list = (ArrayList) sqlSession.selectList("manager.searchDelivery", param);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// 배송 카드 숫자 입력용
	public DeliveryVo searchDeliverChart(ManagerParam param) {
		DeliveryVo vo = new DeliveryVo();
		int status1; // 배송준비
		int status2; // 배송중
		int status3; // 배송완료
		int status4; // 입급대기

		status1 = sqlSession.selectOne("manager.searchDeliveryChart1", param);
		status2 = sqlSession.selectOne("manager.searchDeliveryChart2", param);
		status3 = sqlSession.selectOne("manager.searchDeliveryChart3", param);
		status4 = sqlSession.selectOne("manager.searchDeliveryChart4", param);

		vo.setStatus1(status1);
		vo.setStatus2(status2);
		vo.setStatus3(status3);
		vo.setStatus4(status4);

		return vo;
	}

	// 판매자 인덱스 - 판매현황 리스트 뽑기
	public ArrayList<SellerVo> searchSell(ManagerParam p) {
		ArrayList<SellerVo> list = new ArrayList<SellerVo>();
		this.param = p;
		this.nowPage = p.getNowPage();

		try {
			// 페이징
			totListSize = sqlSession.selectOne("manager.totPageSell", param);
			totPage = (int) Math.ceil(totListSize / (double) listSize);

			if (nowPage < 1) {
				nowPage = 1;
			}
			if (nowPage > totPage) {
				nowPage = totPage;
			}
			endNo = nowPage * listSize;
			startNo = endNo - (listSize - 1);

			param.setStartNo(startNo);
			param.setEndNo(endNo);
			param.setNowPage(nowPage);
			param.setTotPage(totPage);

			list = (ArrayList) sqlSession.selectList("manager.searchSell", param);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// 판매현황 - 전체 통계 카드 작성용
	public SellerVo searchSellChartAll() {
		SellerVo vo = new SellerVo();
		vo = sqlSession.selectOne("manager.searchSellChartAll");
		return vo;
	}
	
	//매니저 인덱스 메인 매출 에어리어 차트 값 꺼내기 	
	public List<BproductVo> chartMain(){
		List<BproductVo> list = new ArrayList<BproductVo>();
		for(int i = 1 ; i <= 12 ; i++) {
			BproductVo vo = new BproductVo();
			vo = sqlSession.selectOne("manager.chartMain", i);
			list.add(vo);
		}	
		return list;
	}
	
	//매니저 인덱스 메인 매출 파이 차트 값 꺼내기 	
	public List<BproductVo> chartPie(){
		List<BproductVo> listPie = new ArrayList<BproductVo>();
		listPie = sqlSession.selectList("manager.chartPie");		
		
		return listPie;
	}
	
	//매니저 인덱스 메인 상단 월매출 꺼내기 
	public BproductVo chartMonthTotal() {
		BproductVo vo = new BproductVo();
		vo = sqlSession.selectOne("manager.chartMonthTotal");
		
		return vo;
	}

	//매니저 인덱스 메인 상단 연누계매출 및 구매건수 꺼내기 
	public BproductVo chartYearTotal(){
		BproductVo vo = new BproductVo();
		vo = sqlSession.selectOne("manager.chartYearTotal");
		return vo;
	}
	
	//매니저 인덱스 메인 하단 판매율 데이터 
	public List<BproductVo> chartSale() {
		List<BproductVo> listSale = new ArrayList<BproductVo>();
		listSale = sqlSession.selectList("manager.chartSale");
		
		return listSale;
		
	}
	
	//관리자 일반상품 서치 
	public List<RproductVo> search(Param para) {
		List<RproductVo> list = null;
		this.para = para;
		try {
				this.totListSize = sqlSession.selectOne("manager.totListSize", para);
				totPage = (int)Math.ceil(totListSize/(double)listSize);
	
				this.nowPage = para.getNowPage();	
				endNo = nowPage * listSize;
				startNo = endNo-(listSize-1);
				para.setNowPage(nowPage);
				para.setStartNo(startNo);
				para.setEndNo(endNo);
				para.setTotPage(totPage);

				list = sqlSession.selectList("manager.search" , para);
		} catch (Exception ex) {
			sqlSession.rollback();
			ex.printStackTrace();
		} finally {
			sqlSession.commit();
			return list;
		}
	}
	
	//관리자 못난이상품 서치 
	public List<RproductVo> searchU(Param para) {
		List<RproductVo> list = null;
		this.para = para;
		try {
				this.totListSizeU = sqlSession.selectOne("manager.totListSizeU", para);
				totPage = (int)Math.ceil(totListSizeU/(double)listSize);
	
				this.nowPage = para.getNowPage();	
				endNo = nowPage * listSize;
				startNo = endNo-(listSize-1);
				para.setNowPage(nowPage);
				para.setStartNo(startNo);
				para.setEndNo(endNo);
				para.setTotPage(totPage);

				list = sqlSession.selectList("manager.searchU" , para);
		} catch (Exception ex) {
			sqlSession.rollback();
			ex.printStackTrace();
		} finally {
			sqlSession.commit();
			return list;
		}
	}
	
	//관리자 세일상품 서치 
	public List<RproductVo> searchS(Param para) {
		List<RproductVo> list = null;
		this.para = para;
		try {
				this.totListSizeS = sqlSession.selectOne("manager.totListSizeS", para);
				totPage = (int)Math.ceil(totListSizeS/(double)listSize);
	
				this.nowPage = para.getNowPage();	
				endNo = nowPage * listSize;
				startNo = endNo-(listSize-1);
				para.setNowPage(nowPage);
				para.setStartNo(startNo);
				para.setEndNo(endNo);
				para.setTotPage(totPage);

				list = sqlSession.selectList("manager.searchS" , para);
		} catch (Exception ex) {
			sqlSession.rollback();
			ex.printStackTrace();
		} finally {
			sqlSession.commit();
			return list;
		}
	}
	
	//관리자 공지사항 써치 notice 
	public List<NoticeVo> notice(Param para) {
		List<NoticeVo> list = null;
		this.para = para;
		try {
			this.totListSizeN = sqlSession.selectOne("manager.totListSizeN", para);
			totPage = (int)Math.ceil(totListSizeN/(double)listSize);
			
			this.nowPage = para.getNowPage();	
			endNo = nowPage * listSize;
			startNo = endNo-(listSize-1);
			para.setNowPage(nowPage);
			para.setStartNo(startNo);
			para.setEndNo(endNo);
			para.setTotPage(totPage);
			
			list = sqlSession.selectList("manager.notice" , para);
		} catch (Exception ex) {
			sqlSession.rollback();
			ex.printStackTrace();
		} finally {
			sqlSession.commit();
			return list;
		}
	}	
	
	//관리자 1:1문의 써치 
	public List<RproductVo> question(Param para) {
		List<RproductVo> list = null;
		this.para = para;
		try {
				this.totListSizeQ = sqlSession.selectOne("manager.totListSizeQ", para);
				totPage = (int)Math.ceil(totListSizeQ/(double)listSize);
	
				this.nowPage = para.getNowPage();	
				endNo = nowPage * listSize;
				startNo = endNo-(listSize-1);
				para.setNowPage(nowPage);
				para.setStartNo(startNo);
				para.setEndNo(endNo);
				para.setTotPage(totPage);

				list = sqlSession.selectList("manager.question" , para);
		} catch (Exception ex) {
			sqlSession.rollback();
			ex.printStackTrace();
		} finally {
			sqlSession.commit();
			return list;
		}
	}
	
	//관리자 상품 등록 처리 	
	public String insert(HttpServletRequest req) {
		
		String msg = "자료가 정상적으로 저장됨";
		try {
			boolean b = true;
			mVo = multiToMVo(req);
			
			int cntR = sqlSession.insert("manager.insertR", rVo);
			int cntM = sqlSession.insert("manager.insertM", mVo);
			
		}catch(Exception ex) {
			sqlSession.rollback();
			ex.printStackTrace();
			msg = ex.toString();
		}finally {
			sqlSession.commit();
			return msg;
		}
	}
	
	//사진 업로드 insert 
	public MproductVo multiToMVo(HttpServletRequest req) throws Exception{
		MproductVo mVo = new MproductVo();
		RproductVo rVo = new RproductVo();
		
		//파일업로드
		multi = new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy()) ;	
		
		Enumeration<String> en = multi.getFileNames();
		int cnt = 0;
		while(en.hasMoreElements()) {
	    
			String tag = (String)en.nextElement();//photo
			if(multi.getFilesystemName(tag)== null) continue;
			if(cnt == 0){	
				mVo.setmPhoto(multi.getOriginalFileName(tag));
			}
			if(cnt ==1) {
				mVo.setmContent(multi.getOriginalFileName(tag));				
			}		
			cnt++;
		}
		
		mVo.setmName(multi.getParameter("rpName"));
		mVo.setmPrice(Integer.parseInt(multi.getParameter("rPrice")));
//		mVo.setMfPrice(Integer.parseInt(multi.getParameter("rfPrice")));
		mVo.setmSubject(multi.getParameter("mSubject"));
		mVo.setMsId(multi.getParameter("rsId"));
		
		rVo.setrEa(Integer.parseInt(multi.getParameter("rEa")));
//		rVo.setRfPrice(Integer.parseInt(multi.getParameter("rfPrice")));
		rVo.setRpName(multi.getParameter("rpName"));
		rVo.setrOptionName(multi.getParameter("rOptionName"));
//		rVo.setrRate(Integer.parseInt(multi.getParameter("rRate")));
		rVo.setrSubject(multi.getParameter("mSubject"));
		rVo.setRsId(multi.getParameter("rsId"));
		rVo.setrPhoto(mVo.getmPhoto());
		rVo.setrContent(mVo.getmContent());
		rVo.setrPrice(Integer.parseInt(multi.getParameter("rPrice")));
		rVo.setrVideo(multi.getParameter("rVideo"));
		
		this.rVo = rVo;
		
		return mVo;
	}
	
	//관리자 공지사항 insert 
	public String insert_notice(NoticeVo nVo) {
		String msg = "공지가 정상적으로 등록되었습니다. ";
		int cnt = 0;
		try {		
			cnt = sqlSession.insert("manager.insert_notice", nVo);
			if(cnt<1) {
				msg  = "공지사항 입력 중 오류 발생";
				sqlSession.rollback();
			}		
		}catch(Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			msg  = "공지사항 입력 중 오류 발생";
		}
		sqlSession.commit();
		return msg;
		
	}
	
	//관리자 상품 상세보기 
	public RproductVo view(int serial) {
		RproductVo rVo = new RproductVo();
		rVo = sqlSession.selectOne("manager.view", serial);
		return rVo;
	}
	
	//관리자 공지사항 상세보기 
	public NoticeVo notice_view(int serial) {
		NoticeVo nVo = new NoticeVo();
		nVo = sqlSession.selectOne("manager.notice_view", serial);
		return nVo;
	}
	
	//관리자 1:1문의 상세보기 
	public QuestionVo question_view(int serial) {
		QuestionVo qVo = new QuestionVo();
		qVo = sqlSession.selectOne("manager.question_view", serial);
		return qVo;
	}
	
	//관리자 상품 수정(sale) 적용
	public String modify(HttpServletRequest req) {
		String msg = "수정이 완료되었습니다.";
		try {
			mVo = multiToMVo(req);
			rVo.setrRate(Integer.parseInt(multi.getParameter("rRate")));
			rVo.setRfPrice(Integer.parseInt(multi.getParameter("rfPrice")));
			
			System.out.println(rVo.getrRate());
			if(rVo.getrRate()!= 0) {
				int cntR = sqlSession.update("manager.modify", rVo);
				int cntM = sqlSession.update("manager.modifyM", rVo);

				
				if(cntR<1) {
					msg = "Rproduct 수정중 오류 발생";
					sqlSession.rollback();
				}else if(cntM<1) {
					msg = "Mproduct 수정중 오류 발생";
					sqlSession.rollback();
				}
			}
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		}
		sqlSession.commit();
		return msg;
	}
	
	//관리자 공지사항 수정  
	public String nModify(NoticeVo nVo) {
		String msg = "공지사항 수정 완료 ";
		int cnt = 0;
		try {
			cnt = sqlSession.update("manager.nModify", nVo);
			if(cnt<1) {
				msg = "공지사항 수정 중 오류 발생 ";
				sqlSession.rollback();
			}	
		}catch(Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			msg  = "공지사항 수정 중 오류 발생";
		}
		sqlSession.commit();
		return msg;
	}
	
	//관리자 상품 삭제 
	public String delete(HttpServletRequest req) {
		String msg = "삭제가 완료되었습니다.";
		try {
			mVo = multiToMVo(req);
//			int cntC = sqlSession.delete("manager.deleteCpro", rVo);
			int cntM = sqlSession.delete("manager.deleteMpro", rVo);
			int cntR = sqlSession.delete("manager.deleteRpro", rVo);
			if( cntR<1 ) {
				msg = "rProduct 삭제중 오류 발생";
				sqlSession.rollback();
			}else if(cntM<1) {
				msg = "MProduct 삭제중 오류 발생";
				sqlSession.rollback();
			}
//			else if (cntC<1) {
//				msg = "Cproduct 삭제중 오류 발생";
//				sqlSession.rollback();
//			}
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		}	
			sqlSession.commit();
		return msg;
	}
	
	//관리자 공지사항 삭제 
	public String nDelete(NoticeVo nVo) {
		String msg = "삭제가 완료되었습니다.";
		try {
			int cnt = sqlSession.delete("manager.nDelete", nVo);
			if( cnt<1 ) {
				msg = "공지사항 삭제중 오류 발생";
				sqlSession.rollback();
			}		
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			msg = "공지사항 삭제중 오류 발생";
		}	
		sqlSession.commit();
		return msg;
	}

	public Param getPara() {
		return para;
	}

	public void setPara(Param para) {
		this.para = para;
	}

	public ManagerParam getParam() {
		return param;
	}

	public void setParam(ManagerParam param) {
		this.param = param;
	}

	// SHS 수정 11.08
	// 관리자 상품 수정(sale) 적용
	public String qModify(QuestionVo vo) {
		String msg = "수정이 완료되었습니다.";
		try {
			int cnt = sqlSession.update("manager.qModify", vo);
			
			if (cnt < 1) {
				msg = "Rproduct 수정중 오류 발생";
				sqlSession.rollback();
			}
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		}
		sqlSession.commit();
		return msg;
	}
	
	// 구매기록 상세보기
	public SellerVo sellView(int bCode) {
		SellerVo vo = null;
		vo = sqlSession.selectOne("manager.sellView", bCode);
		return vo;
	}
	
	// 배송기록 상세보기
	public DeliveryVo deliveryView(int dNumber) {
		DeliveryVo vo = null;
		vo = sqlSession.selectOne("manager.deliveryView", dNumber);
		return vo;
	}
	
	// 구매자 목록 보기
	public  List<SbMemberVo> bmemberSearch(Param para){
		List<SbMemberVo> list = new ArrayList<SbMemberVo>();
		
		this.para = para;
		this.nowPage = para.getNowPage();
		
		try {
			// 페이징
			totListSize = sqlSession.selectOne("manager.totPageBmember", para);
			totPage = (int) Math.ceil(totListSize / (double) listSize);
			
			if (nowPage < 1) {
				nowPage = 1;
			}
			if (nowPage > totPage) {
				nowPage = totPage;
			}
			endNo = nowPage * listSize;
			startNo = endNo - (listSize - 1);
			
			para.setStartNo(startNo);
			para.setEndNo(endNo);
			para.setNowPage(nowPage);
			para.setTotPage(totPage);
			
			list = (ArrayList) sqlSession.selectList("manager.bmemberSearch", para);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// 판매자 목록 보기
	public  List<SbMemberVo> smemberSearch(Param para){
		List<SbMemberVo> list = new ArrayList<SbMemberVo>();
		
		this.para = para;
		this.nowPage = para.getNowPage();
		
		try {
			// 페이징
			totListSize = sqlSession.selectOne("manager.totPageSmember", para);
			totPage = (int) Math.ceil(totListSize / (double) listSize);
			
			if (nowPage < 1) {
				nowPage = 1;
			}
			if (nowPage > totPage) {
				nowPage = totPage;
			}
			endNo = nowPage * listSize;
			startNo = endNo - (listSize - 1);
			
			para.setStartNo(startNo);
			para.setEndNo(endNo);
			para.setNowPage(nowPage);
			para.setTotPage(totPage);
			
			list = (ArrayList) sqlSession.selectList("manager.smemberSearch", para);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	
	


	
}
