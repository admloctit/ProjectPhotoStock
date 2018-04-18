package photostock.entities;
// Generated Mar 8, 2018 3:01:44 PM by Hibernate Tools 5.2.3.Final

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Membership generated by hbm2java
 */
@Entity
@Table(name = "membership", catalog = "photostock")
public class Membership implements java.io.Serializable {

	private Integer id;
	private String mbName;
	private BigDecimal mbPrice;
	private String mbDescribe;
	private Set<Transaction> transactions = new HashSet<Transaction>(0);

	public Membership() {
	}

	public Membership(String mbName, BigDecimal mbPrice, String mbDescribe) {
		this.mbName = mbName;
		this.mbPrice = mbPrice;
		this.mbDescribe = mbDescribe;
	}

	public Membership(String mbName, BigDecimal mbPrice, String mbDescribe, Set<Transaction> transactions) {
		this.mbName = mbName;
		this.mbPrice = mbPrice;
		this.mbDescribe = mbDescribe;
		this.transactions = transactions;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "mb_name", nullable = false, length = 250)
	public String getMbName() {
		return this.mbName;
	}

	public void setMbName(String mbName) {
		this.mbName = mbName;
	}

	@Column(name = "mb_price", nullable = false, precision = 10)
	public BigDecimal getMbPrice() {
		return this.mbPrice;
	}

	public void setMbPrice(BigDecimal mbPrice) {
		this.mbPrice = mbPrice;
	}

	@Column(name = "mb_describe", nullable = false, length = 250)
	public String getMbDescribe() {
		return this.mbDescribe;
	}

	public void setMbDescribe(String mbDescribe) {
		this.mbDescribe = mbDescribe;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "membership")
	public Set<Transaction> getTransactions() {
		return this.transactions;
	}

	public void setTransactions(Set<Transaction> transactions) {
		this.transactions = transactions;
	}

}
