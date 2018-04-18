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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Item generated by hbm2java
 */
@Entity
@Table(name = "item", catalog = "photostock")
public class Item implements java.io.Serializable {

	private Integer id;
	private Category category;
	private Discount discount;
	private Seller seller;
	private String itemName;
	private String itemCode;
	private BigDecimal itemPrice;
	private Set<Ordersdetail> ordersdetails = new HashSet<Ordersdetail>(0);

	public Item() {
	}

	public Item(Category category, Discount discount, Seller seller, String itemName, String itemCode,
			BigDecimal itemPrice) {
		this.category = category;
		this.discount = discount;
		this.seller = seller;
		this.itemName = itemName;
		this.itemCode = itemCode;
		this.itemPrice = itemPrice;
	}

	public Item(Category category, Discount discount, Seller seller, String itemName, String itemCode,
			BigDecimal itemPrice, Set<Ordersdetail> ordersdetails) {
		this.category = category;
		this.discount = discount;
		this.seller = seller;
		this.itemName = itemName;
		this.itemCode = itemCode;
		this.itemPrice = itemPrice;
		this.ordersdetails = ordersdetails;
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

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "cat_pk", nullable = false)
	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "discount_pk", nullable = false)
	public Discount getDiscount() {
		return this.discount;
	}

	public void setDiscount(Discount discount) {
		this.discount = discount;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "seller_pk", nullable = false)
	public Seller getSeller() {
		return this.seller;
	}

	public void setSeller(Seller seller) {
		this.seller = seller;
	}

	@Column(name = "item_name", nullable = false, length = 250)
	public String getItemName() {
		return this.itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	@Column(name = "item_code", nullable = false, length = 250)
	public String getItemCode() {
		return this.itemCode;
	}

	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}

	@Column(name = "item_price", nullable = false, precision = 10)
	public BigDecimal getItemPrice() {
		return this.itemPrice;
	}

	public void setItemPrice(BigDecimal itemPrice) {
		this.itemPrice = itemPrice;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "item")
	public Set<Ordersdetail> getOrdersdetails() {
		return this.ordersdetails;
	}

	public void setOrdersdetails(Set<Ordersdetail> ordersdetails) {
		this.ordersdetails = ordersdetails;
	}

}