package cn.freeteam.cms.dao;

import cn.freeteam.cms.model.Creditlog;
import cn.freeteam.cms.model.CreditlogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CreditlogMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_creditlog
     *
     * @mbggenerated Mon Feb 04 21:34:40 CST 2013
     */
    int countByExample(CreditlogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_creditlog
     *
     * @mbggenerated Mon Feb 04 21:34:40 CST 2013
     */
    int deleteByExample(CreditlogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_creditlog
     *
     * @mbggenerated Mon Feb 04 21:34:40 CST 2013
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_creditlog
     *
     * @mbggenerated Mon Feb 04 21:34:40 CST 2013
     */
    int insert(Creditlog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_creditlog
     *
     * @mbggenerated Mon Feb 04 21:34:40 CST 2013
     */
    int insertSelective(Creditlog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_creditlog
     *
     * @mbggenerated Mon Feb 04 21:34:40 CST 2013
     */
    List<Creditlog> selectByExample(CreditlogExample example);
    List<Creditlog> selectPageByExample(CreditlogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_creditlog
     *
     * @mbggenerated Mon Feb 04 21:34:40 CST 2013
     */
    Creditlog selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_creditlog
     *
     * @mbggenerated Mon Feb 04 21:34:40 CST 2013
     */
    int updateByExampleSelective(@Param("record") Creditlog record, @Param("example") CreditlogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_creditlog
     *
     * @mbggenerated Mon Feb 04 21:34:40 CST 2013
     */
    int updateByExample(@Param("record") Creditlog record, @Param("example") CreditlogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_creditlog
     *
     * @mbggenerated Mon Feb 04 21:34:40 CST 2013
     */
    int updateByPrimaryKeySelective(Creditlog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_creditlog
     *
     * @mbggenerated Mon Feb 04 21:34:40 CST 2013
     */
    int updateByPrimaryKey(Creditlog record);
}