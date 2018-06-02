package attraction.model;

import java.util.List;

import util.Pagination;

public class PagingAttractions {
	private List<Attraction> attractions;
	private Pagination pagination;
	
	public List<Attraction> getAttractions() {
		return attractions;
	}
	public void setAttractions(List<Attraction> attractions) {
		this.attractions = attractions;
	}
	public Pagination getPagination() {
		return pagination;
	}
	public void setPagination(Pagination pagination) {
		this.pagination = pagination;
	}
	@Override
	public String toString() {
		return "PagingAttractions [attractions=" + attractions + ", pagination=" + pagination + "]";
	}
}
