.class Lcom/android/internal/telephony/gsm/GSMPhone$3;
.super Landroid/content/BroadcastReceiver;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0

    .prologue
    .line 4188
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$3;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4192
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone$3;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "received broadcast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->LOGW(Ljava/lang/String;)V

    .line 4194
    const-string v7, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4195
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone$3;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v7

    invoke-static {p1, v7}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v5

    .line 4196
    .local v5, "mySimInfo":Landroid/provider/Telephony$SIMInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "persist.radio.cfu.iccid."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone$3;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4197
    .local v4, "mySettingName":Ljava/lang/String;
    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4199
    .local v6, "oldIccId":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 4200
    iget-object v7, v5, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4201
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone$3;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mySimId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone$3;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    # getter for: Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I
    invoke-static {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$000(Lcom/android/internal/telephony/gsm/GSMPhone;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mySettingName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " old iccid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " new iccid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->LOGW(Ljava/lang/String;)V

    .line 4202
    iget-object v7, v5, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "persist.radio.cfu.change."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone$3;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4204
    .local v3, "isChanged":Ljava/lang/String;
    const-string v7, "1"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4205
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone$3;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v8, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z
    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$102(Lcom/android/internal/telephony/gsm/GSMPhone;Z)Z

    .line 4230
    .end local v3    # "isChanged":Ljava/lang/String;
    .end local v4    # "mySettingName":Ljava/lang/String;
    .end local v5    # "mySimInfo":Landroid/provider/Telephony$SIMInfo;
    .end local v6    # "oldIccId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4210
    :cond_1
    const-string v7, "volte.conference.xml.ind"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4212
    const-string v2, ""

    .line 4213
    .local v2, "data":Ljava/lang/String;
    const-string v7, "call_id"

    const/4 v8, 0x3

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4214
    .local v1, "callId":I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone$3;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleVoLteConfCallMessage(IILjava/lang/String;)V

    goto :goto_0
.end method
