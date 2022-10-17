<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점심 메뉴 자동 선택하기</title>
</head>
<body>
	<div style="width: 1000px; height: 5px; text-align:center">
	<h3><b>점심 식당 자동 선택하기</b></h3>
	</div>
	<div style="width: 1000px; height: 10px; text-align:left">
		<h4>식당 리스트</h4>
		<%
			String[] menu = {"원 디그리 노스", "정면", "필레터", "개성만두 궁", 
							"게방식당", "광화문 국밥", "교다이야", "교양식사", 
							"구복만두", "금돼지식당", "꽃,밥에피다", "꿉당",
							"남포면옥", "대성집", "마포옥", "만두집", "만족오향족발", 
							"멘텐", "명동교자", "미미 면가", "미진", "베이스 이즈 나이스", 
							"봉산옥", "봉피양", "부촌육회", "삼청동 수제비", "소이연남마오", 
							"스바루", "안씨 막걸리", "야키토리 묵", "양양 메밀 막국수", 
							"에그 앤 플라워", "역전회관", "오레노 라멘", "옥동식", "용금옥",
							"우래옥", "우육면관", "유림면", "임병주 산동 칼국수", "자하 손만두",
							"정육면체", "정인면옥", "진미 평양냉명", "진진", "툭툭 누들 타이",
							"팀호완", "팩피", "피양콩 할마니", "필동면옥", "하동관", "할매집",
							"합정옥", "현우동", "화해당", "황금콩밭", "황생가 칼국수"};
			
			String[] picture = {"https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjEwMDVfMjcx%2FMDAxNjY0OTcxODc2NDgx.STF7TzBg5Sss_aUKd7jZzlEWzP3jzQOjz0gG0IWaLWcg.dcIGz9edc8FKWDdR9AVLpYYqpKKGImG0zwpZEIzjZyIg.JPEG%2F40AA52F5-79CC-4FAD-ADFC-8717FC3DD683.jpeg","https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjA5MjZfNzQg%2FMDAxNjY0MTYxOTEyOTQ3.hqpE6fM4VTlfXbAC-53VPfx9pooyJnrZAX0AhqI7YD8g.P0QeKjhTvvW2mxcTd5JrsowYwmmOa26bnIuiMqtl31Eg.JPEG%2F37BA0D36-31D8-40CA-8299-0607662289FE.jpeg",
								"https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fnaverbooking-phinf.pstatic.net%2F20220823_229%2F1661230193840g0bR3_JPEG%2Fimage.jpg","https://ldb-phinf.pstatic.net/20150831_57/1441000925740Mnli9_JPEG/11590805_2.jpg", 
								"https://ldb-phinf.pstatic.net/20171122_252/1511340385949KxxRd_JPEG/bxInCIRJ6Tar8lqyYGi4HCrM.jpg","https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjEwMDVfMjM4%2FMDAxNjY0OTc1ODg2MDE5.Jg5h1sh6mGMsNViYWXolkSFEf14oYFRW3RfUV0xp40Ag.rjTH4pxCs6_8x3I5VtIgguXWkmaDzNT_yBVxjsRDYrUg.JPEG%2F20221003_193753.jpg",
								"https://pup-review-phinf.pstatic.net/MjAyMjA4MjFfMzAg/MDAxNjYxMDc5MDAwMzg2.rNaNAfuYq4eoBkJb06HMDW30hgoark3Z_FEQg1v_Eiwg.uTDyz5F3pUH9wMyMGxT_CiJZbnaZQwMNAYkMQ0gKcQcg.JPEG/upload_0256a35b7e0cf4f199a218a067053e01.jpeg","https://pup-review-phinf.pstatic.net/MjAyMjA4MTRfMTcw/MDAxNjYwNDA2MDUwMTA3.hs873covJTGeajWq5muKRw3MKvauopIyYyAeUSxrCVog.D59VHe6NRSIIseT5qBZwZKil4rsiBMN7pwppUSHnLAog.JPEG/upload_0525155dff374b6b82fc3fe0e2a3e4a7.jpeg",
								"https://pup-review-phinf.pstatic.net/MjAyMjEwMDFfMTQ5/MDAxNjY0NjIyMjg2MDYx.IiSu_a_xozr-ww8ASt27Yd_6OrLya5FPOVd_X4Iynqwg.jFR3xJhl0Y6gMKh60IP01Mul0P73jF4qfMak9Lxzz8cg.JPEG/A7D4B8B6-4CD0-414C-BD0B-5433FAB69679.jpeg","https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjEwMDVfMjY5%2FMDAxNjY0OTgxNDc5NzU4.sBHCMvDPGzrpHSE3NwRDooH2pB4uaZHaahihEf8tcnEg.sKzrFxjXZvxmDxd83Rp5Bx3hLe2ICbvaX39iwcstlpog.JPEG%2F1664981123573.jpg",
								"https://ldb-phinf.pstatic.net/20220223_257/1645611789504GTyx2_JPEG/KakaoTalk_20220223_190211371.jpg","https://pup-review-phinf.pstatic.net/MjAyMjEwMDJfOCAg/MDAxNjY0NjQzMDc4MTkx.IDyqjVvFE4ejszEywtTXk9sUou4M939ZgoFu22nc73wg.DsjofpQ48C8xjYxAI3G6wZkshRvQlr0cpSEKDjNUus4g.JPEG/0743E036-DD6B-4B90-8EBD-95A5E38472E2.jpeg",
								"https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MDJfMzAw%2FMDAxNjIyNjI4NjQ5OTY4.mvWmRGiUW3MrjX4JIBZsYelg1yYdRFOD69WPwt81_8Qg.gaccW5C65ekvhIvtYmf2BWPBPICzN_CbLrJA1TMzrZIg.JPEG.orangelab21%2FKakaoTalk_20210602_185127216_07.jpg","https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjA5MTZfODkg%2FMDAxNjYzMjk1OTI1NDM5.xm3HaXjAfGM1qmO7kK9EvvmE5KOfIYR1jJn_a_VLA2Ug.ZZTJ8xYyYkMJBjJgatBO6wIUwiTWfMiJ9p0QO11S07Qg.JPEG%2F9586509B-379E-4B25-A91B-247C995A13CB.jpeg",
								"https://pup-review-phinf.pstatic.net/MjAyMjEwMDFfMjAy/MDAxNjY0NjE4ODUzNjE3.8DvmdWgEvvJsZQBLuWIGVrnZlX3IcyxhBfBgLDVsCqkg._M2uchBFa2zYk7fYeQLXrC2IqDWK_9GPRWeJea2_nvIg.JPEG/20221001_151610.jpg","https://pup-review-phinf.pstatic.net/MjAyMjEwMDJfMjEz/MDAxNjY0NzE5MzEyMzYy.w3lOTKklhb2SKjavh8bmdu7pOubFuM6evBLhi_R_Y6gg.YDPaUH6cvP30xSU1hRkeSyIz1bqR_l4oVO7Jv9oCEEkg.JPEG/20220928_181702.jpg",
								"https://ldb-phinf.pstatic.net/20151104_45/14466229395131mLRw_JPEG/167054567237814_0.jpg","https://pup-review-phinf.pstatic.net/MjAyMjEwMDFfMjkw/MDAxNjY0NjI4NzU5NzIw.wfjYk6qPaToUfcuzQC0tNt9eyWKkLA0Y_FIeRbhPjUIg.Tp6ACQ-H2j83eFnF83IBjVc3YF1VJuLAGIWkpHaPEBkg.JPEG/20220927_122549.jpg",
								"https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjEwMDVfMjY5%2FMDAxNjY0OTc1Mjc3Mjgw.Oz8KxGjQ0Kt77aS7DmqvnZnasM4IizsQO0iqKqwCH94g._CICQeueQ7PZ1ERRTb3eJW5TInKZibfpji9eic1vpLMg.JPEG%2F61E10A33-A123-46D6-871C-7A5E9720EFA8.jpeg","https://pup-review-phinf.pstatic.net/MjAyMjEwMDNfMzUg/MDAxNjY0Nzc2MTA4ODIw.CvPikyoZ6DXn5ulnAtOF8PV2iX3Q3sGCeGpfn11J22Yg.17roBHt-ibci9UxQ_Y0nGR2BBQR8kBiOSfHKKA6IVsMg.JPEG/68E403DE-CFE4-4DC7-B97B-AA91F40CB386.jpeg",
								"https://ldb-phinf.pstatic.net/20151104_261/1446622892599tSyHJ_JPEG/167054567150405_4.jpg", "https://ldb-phinf.pstatic.net/20210615_182/1623708251117pAMWj_JPEG/image.jpg",
								"https://pup-review-phinf.pstatic.net/MjAyMjEwMDNfMTU1/MDAxNjY0NzMwNTI2ODYw.y4IixsoMYsD5Ab66Q1lVfxJgQwTrGkQzXHfH_FWPBREg.CMK88AE-kNFYAkc1LRLlnrxUZi5frXLz8xGAy22cltcg.JPEG/20221001_135627.jpg","https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjA5MDlfNDMg%2FMDAxNjYyNzIwMDM2MTQw.yRZRDTMgiNJnHJFwCT6GdBufIZDoc2d-PrdfSi0R_u8g.tz-lJWdDmm6tzf8rebfuIDjbY751GX4IzaZNRl_U2vQg.JPEG%2F20220909_182204.jpg",
								"https://ldb-phinf.pstatic.net/20200708_253/1594206819508tib0C_JPEG/lNpy8RpgGmmWui2u5t11Ermp.jpg","https://ldb-phinf.pstatic.net/20160203_208/1454484609178txceK_JPEG/176153566028054_0.jpg",
								"https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjA5MzBfMTEg%2FMDAxNjY0NTQyNTY5MTM3.R9gWYeZMCrXCZCfWy65cx8RCXvEB-niacQyORPc9HcEg.ilYZ9i54a2rn7_d8unpVOOcw48vIWY7y51wIonc50Mog.JPEG%2F20220930_133522.jpg","https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjA5MjlfNjEg%2FMDAxNjY0NDMzMjUyNDAz.77gEoKsnpHNTNWnHt-_qTDQNtCnXAyP9XULY6GWlgsQg.pDNaNoNsZgM7TaXasABNqYf5Cx34y-HF4lck5VM8LAAg.JPEG%2F20220929_130710.jpg",
								"https://pup-review-phinf.pstatic.net/MjAyMjEwMDdfMTAg/MDAxNjY1MTAyMTYyMTIz.QlpE_6u9F8rEvvQUNpq6KgAxE2Ms3SFzwi0r1na4uuYg.6V1Cg8BnjqPyPlA-H9psVDpuEHPCYG1Pnv7bZYa0ArQg.JPEG/21E92969-774B-4528-BEBE-209F13ECBE79.jpeg", "https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjEwMDRfNzEg%2FMDAxNjY0ODkwMjI2MTcz.j2Iv5pcL4yMhsT1BQNmGN5KIRh4plIZE9bFBoo3JoRYg.KdZp7jEvyCSA_iWxEsr1GT5UJMnlJ-Tl7xrYs1Kr4b0g.JPEG%2FF9E6FD98-08DE-4E2F-AD3F-3793BC91F9DC.jpeg",
								"https://pup-review-phinf.pstatic.net/MjAyMjA4MzFfMzAg/MDAxNjYxOTQ5MDA2NDQw.gxqfNwZFeLGrjfBGxqzuCkHqaxtcFAckMVir6LX955gg.qX6VDBFqpxhiBS9fZ-Sh9SIEiBUD23uOFwqX8i8ED-sg.JPEG/20220822_115425.jpg","https://ldb-phinf.pstatic.net/20220728_185/1659015779791HeKoV_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2022-07-28_%BF%C0%C8%C4_5.53.11.png",
								"https://ldb-phinf.pstatic.net/20201218_180/1608263881639E8Q3r_JPEG/1G8RVBaXwAUM9oEKwzjZP3I6.jpg","https://pup-review-phinf.pstatic.net/MjAyMjEwMDdfOTEg/MDAxNjY1MDcwMjc5MDU3.8b8zaKulrCSlB8_szUWdFDOfF1lpRAQbbJtS1PgmXdwg.RF57sE2Dt6zsV88ypRNx_-O8TZM4HO0fuS59H7NUbc8g.JPEG/98B76B67-BD75-4709-A05E-358A86EFFFC2.jpeg",
								"https://pup-review-phinf.pstatic.net/MjAyMjEwMDdfMjQ5/MDAxNjY1MTEwNDUwMzI3._uGcDaloWqrsGBttGiNISXw9JtE2dm0pfysL_D9oYBog.8hgGafEkrQ1J9MLlEGu4btEFqgx9xZqOLstpqlxV0Y4g.JPEG/0C278E9E-1647-440F-A979-6635181632A8.jpeg","https://pup-review-phinf.pstatic.net/MjAyMjA5MjFfMTI1/MDAxNjYzNzUzNDM2NzU2.yodNEKQyVuGsSlZdd38McdlB3t1tzbtMgXNrJm9O1sog.PZhCQuJ_-niip6UKZpOiVrTdlUMFxodBiqm5J1HMfwcg.JPEG/0FC97C01-E55A-4CD2-9CAD-40BE9FB1D81D.jpeg",
								"https://pup-review-phinf.pstatic.net/MjAyMjEwMDRfMTEg/MDAxNjY0ODczNDI3MTg5.yY-CER-LxK-5ba6gZQuwMJnXc9NyWPJME8K0_tKu-9Ig.rDhveVG2nBuwJ6-KpaldU6SqcbGZ_SDFe8XTJX-jOPcg.JPEG/20221004_122231.jpg","https://ldb-phinf.pstatic.net/20211001_288/1633075001147oinm5_JPEG/aKaiqbANfeSjEeF4QcCsu_j4.JPG.jpg",
								"https://ldb-phinf.pstatic.net/20150831_230/1441029980027AC79C_JPEG/156155408344735_3.jpg","https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA4MDdfNjQg%2FMDAxNjU5ODQ0NTQ5MTQ3.kVenl6KVKUmiJmlE6TLWd6Wh5DFmQzUB05RyvzdI-asg.VSU0bZQTIxrEqq9pnMM0CJ3kM_4mGT7wqm6mMrJZqZAg.JPEG.jisukuloo%2FIMG_1585.jpg",
								"https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA2MjFfMjUy%2FMDAxNTkyNzIyMDk1MzE3.N6Mo8LPNUUUlKome730_dBodDbspokT-RL9o8DpXi2sg.aQZqYla7fZnykszb23vxKiAPZgrN4Ilbwu5W46vJcwQg.JPEG.wert0130%2FIMG_3787.JPG", "https://ldb-phinf.pstatic.net/20220330_134/1648594174765VsGqD_JPEG/KakaoTalk_20220330_074745614_01.jpg",
								"https://ldb-phinf.pstatic.net/20150817_194/1439805575421MQFMH_JPEG/166767588953726_0.jpg","https://pup-review-phinf.pstatic.net/MjAyMjEwMDJfNDYg/MDAxNjY0Njg1NTU0Nzkz.yl8hMfK-rcRgFgESAkP1ClG4a1SHNuZPK1-p1Xlx4HQg.bhMLNEiIQ6oNQCJY9aA1KJTwyDUYvGaUWYUnWyMP7-wg.JPEG/B1A866ED-5FD0-4F9F-9ABC-650CE101B9BC.jpeg",
								"https://ldb-phinf.pstatic.net/20220318_246/1647591479851hKINB_JPEG/P20220220_150502610_29445B32-CBBF-400F-A6DF-92686DDDE762.JPG","https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjEwMDVfOTUg%2FMDAxNjY0OTExMzY0NTQx.JPnPegvhEWfbbdyaou9lRVbqOAkY5TPbpNXDVZoKr0kg.oO_XVoDkJBC0WEZnInGcFbZQ-TEla_0MSOs_VRnMbfgg.JPEG%2F20221004_171544.jpg",
								"https://ldb-phinf.pstatic.net/20200724_40/1595567930452F6jtR_JPEG/%C6%C0%C8%A3%BF%CF_%B8%DE%B4%BA%BA%CF_%C7%A5%C1%F6.JPG","https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjA5MjlfMTM1%2FMDAxNjY0NDU2NTc2Njc3.5ONEWS0nwzgBpDMcc4SJm-ruPBiCIS86ShesE2VvWg0g.N_orFNxuxRUt5JQ7wPSFBWkOhtmd6Dbv_Z7NGAmo4iEg.JPEG%2F39E62AD9-52AD-4751-98B3-3CF12135A62B.jpeg",
								"https://pup-review-phinf.pstatic.net/MjAyMjEwMDNfMjg3/MDAxNjY0Nzg3NDA3OTE0.wLWuZ0zh_EtE1r63FeMgv3vJ-MXyZvTRo8ZDxqhjhNUg.UHeukMaYsi6yWhO3BzNEtz4NyTEuOcTuJAYEomWHh2Ag.JPEG/BD9A3B1D-AF29-4112-B25B-202CE0F0B0CC.jpeg","https://pup-review-phinf.pstatic.net/MjAyMjA5MjVfMjIg/MDAxNjY0MTA1OTU2MzA2.P8qJko-3hox_qowa1Si9bb5kXMZKpX7TU0qo6KX0ukcg.bQao8WDb9p_7xZqgiFS-mKQYcoG8_lc6qys3kgDeV_gg.JPEG/709429CD-D067-4182-92F5-3000277D51E4.jpeg",
								"https://ldb-phinf.pstatic.net/20150831_114/1441017828275ozKpm_JPEG/166755615548158_0.jpg","https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MTRfMjE1%2FMDAxNjQ5ODk4MDEzNzY3.TRGBRh55FlRP3U-NhyOr3-1aJEbyEqHjUVWouwHs9Bkg.zGkkKZs97i642sD91oSRn3f5g1t-ZvF2C2AVq0BAFWAg.JPEG.lch0100%2FCC782995-6378-4AB6-BC2F-4B31046BD374.jpg",
								"https://pup-review-phinf.pstatic.net/MjAyMjA5MTZfMTU5/MDAxNjYzMzI5Mzc2ODYw.VN-9vumVsJiWaBmzmQ_H62Sp9FDE7zuaCv6ZtWqC_r4g.p8BlUOHwpS4SLeriKXJYTx71QiXImUxlUWl5FdAUYo4g.JPEG/20220916_202757.jpg","https://pup-review-phinf.pstatic.net/MjAyMjA5MjdfMyAg/MDAxNjY0MjU0OTQ4MDc4.UpzAu3cRoGTN57sV99_XFsUHg0s9eoiaNfdV2H8vXJMg.CIDwpIW9mCDMSWIORAM4XgdNWbjSHvc4TeqTajwBqYog.JPEG/20220924_122630.jpg",
								"https://pup-review-phinf.pstatic.net/MjAyMjA5MDdfMTk5/MDAxNjYyNTM5NzU0NDky.9xnjNwlx6bZcy7QZ89YPgGBLHC809EV5xXT4UGfUQ5Yg.QuOdg5cKtHtr43lDscsMDNmLIntjYZoE4MlH9QByfMIg.JPEG/1662008250835.jpg","https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjEwMDNfMTMx%2FMDAxNjY0ODAxNzk3NjIz.4BL25wVxY8QL6ULh1IAW0xRI3GhH--GDsLJhHNh9CNAg.wmdDhV3WDIVHSrD6FP7p2Q1UeTp3ZthQBb7HtIPqK0Eg.JPEG%2F1664716909993.jpg",
								"https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMjEwMDdfMTAw%2FMDAxNjY1MDkxODY2OTI4.EzpCHpa7Nz_AheIReBebCtrziHCnZw1UfIXJICDWHMEg.ZtWQZ4Tqq0ZWKxK0GOGEngMU1YG6PTJ_dVkYmmnC7jYg.JPEG%2F20221006_185147.jpg"};
			
			session.setAttribute("menu", menu);
			session.setAttribute("pic", picture);
		%>
		<form action="randomMenuRecResult.jsp" style="text-align:center">
			<table border style="width:1000px; text-align:left">
				<%	
					for(int i = 0; i < menu.length; i++) {
						out.print("<td style='width:200px; height:100px'><input type='checkbox' name='name' value='"+i+"'>" + menu[i]+"<br>");
						out.print("<img src=\""+picture[i]+"\"width='200px'; height='200px'></td>");
						if((i%5 == 4)){
							out.print("<tr>");
						}
					}
				%>
			</table>
			<br>
			<input type="submit" value="확인하기" style="width:180px; height:60px;">
		</form>
	</div>
</body>
</html>