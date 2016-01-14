.class Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;
.super Landroid/os/Handler;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$400(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    # setter for: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0, v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$402(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 144
    const-string v0, "DataDispatcher receives get phone instance when handling message"

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    if-eqz v0, :cond_1

    .line 148
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .line 149
    .local v8, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DataDispatcher receives request ["

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "]"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DataDispatcher receives unhandled message ["

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "]"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 225
    .end local v8    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :goto_0
    return-void

    .line 152
    .restart local v8    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDedicateBearerActivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    invoke-static {v0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$500(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 155
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleBearerDeactivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    invoke-static {v0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$600(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 158
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDedicateBearerModificationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    invoke-static {v0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$700(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 161
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    invoke-static {v0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$800(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 164
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDefaultBearerActivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    invoke-static {v0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$900(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 170
    .end local v8    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DataDispatcher receives request ["

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "]"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DataDispatcher receives unhandled message ["

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "]"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1100(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :sswitch_5
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/Intent;

    .line 174
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "DdcId"

    const/4 v13, -0x1

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, "ddcId":I
    const-string v0, "linkProperties"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .line 176
    .local v3, "property":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    const-string v0, "state"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DctConstants$State;

    .line 177
    .local v2, "state":Lcom/android/internal/telephony/DctConstants$State;
    const-string v0, "cause"

    const/4 v13, 0x0

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v4

    .line 178
    .local v4, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    const-string v0, "reason"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "reason":Ljava/lang/String;
    const-string v0, "simId"

    const/4 v13, 0x0

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 181
    .local v11, "simId":I
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onDedicateDataConnectionStateChanged(ILcom/android/internal/telephony/DctConstants$State;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1000(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILcom/android/internal/telephony/DctConstants$State;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v1    # "ddcId":I
    .end local v2    # "state":Lcom/android/internal/telephony/DctConstants$State;
    .end local v3    # "property":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .end local v4    # "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v5    # "reason":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "simId":I
    :sswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 186
    .local v7, "ar":Landroid/os/AsyncResult;
    iget v12, p1, Landroid/os/Message;->arg1:I

    .line 187
    .local v12, "transactionId":I
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 188
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 189
    const-string v0, "DataDispatcher receives MSG_PCSCF_DISCOVERY_PCO_DONE but no PcscfInfo"

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1100(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    const/4 v13, 0x1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static {v0, v12, v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1200(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 198
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    goto/16 :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V
    invoke-static {v13, v12, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1300(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    goto :goto_1

    .line 195
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DataDispatcher receives MSG_PCSCF_DISCOVERY_PCO_DONE but exception ["

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v13, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "]"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1100(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    const/4 v13, 0x1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static {v0, v12, v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1200(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    goto :goto_1

    .line 202
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "transactionId":I
    :sswitch_7
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/Intent;

    .line 203
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v0, "apnType"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, "apnType":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onDefaultBearerDataConnStateChanged(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v0, v9, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1400(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    .end local v6    # "apnType":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_8
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/Intent;

    .line 209
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v0, "apnType"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .restart local v6    # "apnType":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onDefaultBearerDataConnFail(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v0, v9, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1500(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    .end local v6    # "apnType":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_9
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/Intent;

    .line 215
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v0, "apnType"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 216
    .restart local v6    # "apnType":Ljava/lang/String;
    const-string v0, "iface"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, "intfName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onNotifyGlobalIpAddr(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v9, v6, v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1600(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x187dc -> :sswitch_4
        0x187df -> :sswitch_0
        0x187e3 -> :sswitch_1
        0x187e7 -> :sswitch_2
        0x187ed -> :sswitch_3
    .end sparse-switch

    .line 171
    :sswitch_data_1
    .sparse-switch
        0xfa0 -> :sswitch_5
        0x1388 -> :sswitch_6
        0x1770 -> :sswitch_7
        0x17d4 -> :sswitch_8
        0x1b58 -> :sswitch_9
    .end sparse-switch
.end method
