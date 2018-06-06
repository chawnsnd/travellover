package util;

public class Pagination {
	private int page; //현재 페이지 번호
	private int countList; //한 화면에 표현될 게시물 수
	private int countPage; //page 네비에 표현될 페이지 수
	private int totalCount; //총 게시물 수
	private int totalPage; //총 페이지 수
	private int startPage; //네비에 찍힐 첫번쨰 페이지
	private int endPage; //네비에 찍힐 마지막 페이지
	private Boolean start;
	private Boolean end;
	private Boolean prev;
	private Boolean next;
	
	public Pagination(int page, int countList, int countPage) {
		this.page = page;
		this.countList = countList;
		this.countPage = countPage;	
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public void setPaging() {
		this.totalPage = totalCount / countList;
		
		if (totalCount % countList > 0) {
		    this.totalPage++;
		}
		if (totalPage < page) {
		    this.page = totalPage;
		}
		this.startPage = ((page - 1) / countPage)*countPage + 1;
		this.endPage = this.startPage + countPage - 1;
		if (this.endPage > this.totalPage) {
		    this.endPage = this.totalPage;
		}
		if (this.startPage > 1) {
			this.start = true;
		}
		if (this.endPage < this.totalPage) {
			this.end = true;
		}
		if (this.page > 1) {
			this.prev = true;
		}
		if (page < totalPage) {
			this.next = true;
		}
	}
	
	public int getPage() {
		return page;
	}

	public int getCountList() {
		return countList;
	}

	public int getCountPage() {
		return countPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}
	
	public Boolean getStart() {
		return start;
	}

	public Boolean getEnd() {
		return end;
	}

	public Boolean getPrev() {
		return prev;
	}

	public Boolean getNext() {
		return next;
	}

	@Override
	public String toString() {
		return "Pagination [page=" + page + ", countList=" + countList + ", countPage=" + countPage + ", totalCount="
				+ totalCount + ", totalPage=" + totalPage + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", start=" + start + ", end=" + end + ", prev=" + prev + ", next=" + next + "]";
	}



//	for (int iCount = startPage; iCount <= endPage; iCount++) {
//	    if (iCount == page) {
//	        System.out.print(" <b>" + iCount + "</b>");
//	    } else {
//	        System.out.print(" " + iCount + " ");
//	    }
//	}

}
