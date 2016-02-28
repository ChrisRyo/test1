package tw.com.model.vo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.NamedQuery;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import lombok.Data;
import tw.com.jersey.moxyAdapter.DateAdapter;


/**
 * The persistent class for the expensesMain database table.
 * 
 */
@Data
@Entity
@XmlRootElement
@Table(name = "expensesMain")
@IdClass(ExpensesMainPK.class)
@NamedQuery(name = "ExpensesMain.findAll", query = "SELECT e FROM ExpensesMain e")
public class ExpensesMain implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Temporal(TemporalType.DATE)
  @Column(name = "bill_date")
  @XmlJavaTypeAdapter(DateAdapter.class)
  private Date billDate;

  @Id
  @Column(name = "bill_store")
  private String billStore;

  @Column(name="creat_time")
  private Timestamp creatTime;

  @Column(name="creat_user")
  private String creatUser;

  @Column(name="update_time")
  private Timestamp updateTime;

  @Column(name="update_user")
  private String updateUser;

  @PrePersist
  protected void onCreate() {
    if (creatTime == null) {
      creatTime = new Timestamp(new Date().getTime());
    }

    if (creatUser == null) {
      creatUser = "ryo";
    }
  }

}
