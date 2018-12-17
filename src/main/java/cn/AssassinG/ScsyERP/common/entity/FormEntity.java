package cn.AssassinG.ScsyERP.common.entity;

import cn.AssassinG.ScsyERP.common.annitations.Valid;
import com.alibaba.fastjson.annotation.JSONField;

public abstract class FormEntity extends BaseEntity {
    @Valid(varType = Valid.VarType.Other)
    protected Boolean IfCompleted;

    public FormEntity() {
        super();
        this.IfCompleted = false;
    }

    @JSONField(serialize = false)
    public Boolean getIfCompleted() {
        return IfCompleted;
    }

    @JSONField(deserialize = false)
    public void setIfCompleted(Boolean ifCompleted) {
        IfCompleted = ifCompleted;
    }

    @JSONField(name = "ifCompleted")
    public String getIfCompletedNum(){
        if(IfCompleted)
            return "已完成";
        else
            return "未完成";
    }

    @JSONField(name = "ifCompleted")
    public void setIfCompletedNum(String str){
        if(str.equals("0"))
            this.IfCompleted = true;
        else if(str.equals("1"))
            this.IfCompleted = false;
        else
            this.IfCompleted = false;
    }
}
