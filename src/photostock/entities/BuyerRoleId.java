package photostock.entities;
// Generated Mar 8, 2018 3:01:44 PM by Hibernate Tools 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * BuyerRoleId generated by hbm2java
 */
@Embeddable
public class BuyerRoleId implements java.io.Serializable {

	private int buyerPk;
	private int rolePk;

	public BuyerRoleId() {
	}

	public BuyerRoleId(int buyerPk, int rolePk) {
		this.buyerPk = buyerPk;
		this.rolePk = rolePk;
	}

	@Column(name = "buyer_pk", nullable = false)
	public int getBuyerPk() {
		return this.buyerPk;
	}

	public void setBuyerPk(int buyerPk) {
		this.buyerPk = buyerPk;
	}

	@Column(name = "role_pk", nullable = false)
	public int getRolePk() {
		return this.rolePk;
	}

	public void setRolePk(int rolePk) {
		this.rolePk = rolePk;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof BuyerRoleId))
			return false;
		BuyerRoleId castOther = (BuyerRoleId) other;

		return (this.getBuyerPk() == castOther.getBuyerPk()) && (this.getRolePk() == castOther.getRolePk());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getBuyerPk();
		result = 37 * result + this.getRolePk();
		return result;
	}

}