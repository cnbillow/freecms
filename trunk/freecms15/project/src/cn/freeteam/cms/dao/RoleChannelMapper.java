package cn.freeteam.cms.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import cn.freeteam.cms.model.RoleChannel;
import cn.freeteam.cms.model.RoleChannelExample;

public interface RoleChannelMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_role_channel
     *
     * @mbggenerated Tue Oct 16 21:25:57 CST 2012
     */
    int countByExample(RoleChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_role_channel
     *
     * @mbggenerated Tue Oct 16 21:25:57 CST 2012
     */
    int deleteByExample(RoleChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_role_channel
     *
     * @mbggenerated Tue Oct 16 21:25:57 CST 2012
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_role_channel
     *
     * @mbggenerated Tue Oct 16 21:25:57 CST 2012
     */
    int insert(RoleChannel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_role_channel
     *
     * @mbggenerated Tue Oct 16 21:25:57 CST 2012
     */
    int insertSelective(RoleChannel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_role_channel
     *
     * @mbggenerated Tue Oct 16 21:25:57 CST 2012
     */
    List<RoleChannel> selectByExample(RoleChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_role_channel
     *
     * @mbggenerated Tue Oct 16 21:25:57 CST 2012
     */
    RoleChannel selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_role_channel
     *
     * @mbggenerated Tue Oct 16 21:25:57 CST 2012
     */
    int updateByExampleSelective(@Param("record") RoleChannel record, @Param("example") RoleChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_role_channel
     *
     * @mbggenerated Tue Oct 16 21:25:57 CST 2012
     */
    int updateByExample(@Param("record") RoleChannel record, @Param("example") RoleChannelExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_role_channel
     *
     * @mbggenerated Tue Oct 16 21:25:57 CST 2012
     */
    int updateByPrimaryKeySelective(RoleChannel record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table freecms_role_channel
     *
     * @mbggenerated Tue Oct 16 21:25:57 CST 2012
     */
    int updateByPrimaryKey(RoleChannel record);
}