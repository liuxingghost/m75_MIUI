.class Lcom/android/internal/telephony/LteDcConfigHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "LteDcConfigHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LteDcConfigHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LteDcConfigHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LteDcConfigHandler;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/internal/telephony/LteDcConfigHandler$1;->this$0:Lcom/android/internal/telephony/LteDcConfigHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    const-string v7, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "action":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    .line 188
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 189
    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "simStatus":Ljava/lang/String;
    const-string v7, "simId"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 191
    .local v6, "slotId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slotId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    .line 192
    const-string v7, "ABSENT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 194
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$100()[Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    aput-object v8, v7, v6

    .line 195
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sUserType:[I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$200()[I

    move-result-object v7

    const/4 v8, 0x0

    aput v8, v7, v6

    .line 196
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$300()[I

    move-result-object v7

    const/4 v8, 0x0

    aput v8, v7, v6

    .line 197
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->isInitRatModeDone:[Z
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$400()[Z

    move-result-object v7

    const/4 v8, 0x0

    aput-boolean v8, v7, v6

    .line 198
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$500()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 199
    const-string v7, "3/4G Sim removed"

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    .line 200
    const/16 v7, -0x63

    # setter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$502(I)I

    .line 278
    .end local v5    # "simStatus":Ljava/lang/String;
    .end local v6    # "slotId":I
    :cond_0
    :goto_0
    const-string v7, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    .line 279
    return-void

    .line 202
    .restart local v5    # "simStatus":Ljava/lang/String;
    .restart local v6    # "slotId":I
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Slot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not 3/4G slot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_2
    const-string v7, "IMSI"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 205
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$500()I

    move-result v7

    const/16 v8, -0x63

    if-ne v7, v8, :cond_3

    .line 206
    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->getCapabilitySim()I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$600()I

    move-result v7

    # setter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$502(I)I

    .line 208
    :cond_3
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$100()[Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->getImsi(I)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$700(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 209
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sUserType:[I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$200()[I

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/LteDcConfigHandler$1;->this$0:Lcom/android/internal/telephony/LteDcConfigHandler;

    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$100()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v6

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->getUserType(Ljava/lang/String;)I
    invoke-static {v8, v9}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$800(Lcom/android/internal/telephony/LteDcConfigHandler;Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v6

    .line 210
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$300()[I

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/LteDcConfigHandler$1;->this$0:Lcom/android/internal/telephony/LteDcConfigHandler;

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->getIccCardType(I)I
    invoke-static {v8, v6}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$900(Lcom/android/internal/telephony/LteDcConfigHandler;I)I

    move-result v8

    aput v8, v7, v6

    .line 211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sImsi["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$100()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sIccCardType["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$300()[I

    move-result-object v8

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    .line 213
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$500()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v2

    .line 215
    .local v2, "oldMdType":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isInitRatModeDone["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->isInitRatModeDone:[Z
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$400()[Z

    move-result-object v8

    aget-boolean v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oldMdType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    .line 217
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->isInitRatModeDone:[Z
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$400()[Z

    move-result-object v7

    aget-boolean v7, v7, v6

    if-nez v7, :cond_0

    .line 218
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->isInitRatModeDone:[Z
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$400()[Z

    move-result-object v7

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 219
    const/4 v7, 0x0

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->getPreferredRatMode(I)I
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1000(I)I

    move-result v3

    .line 220
    .local v3, "ratToSet":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ratToSet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    .line 221
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$300()[I

    move-result-object v7

    aget v7, v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 222
    const/4 v7, -0x1

    if-ne v3, v7, :cond_4

    .line 223
    const/16 v3, 0x9

    .line 225
    :cond_4
    if-eqz v3, :cond_5

    const/4 v7, 0x3

    if-ne v3, v7, :cond_7

    .line 227
    :cond_5
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1100()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-interface {v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkTypeRIL(I)V

    .line 228
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1100()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 229
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1100()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    aget-object v7, v7, v6

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->switchModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 246
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v1

    .line 247
    .local v1, "newMdType":I
    if-ne v2, v1, :cond_b

    .line 248
    iget-object v7, p0, Lcom/android/internal/telephony/LteDcConfigHandler$1;->this$0:Lcom/android/internal/telephony/LteDcConfigHandler;

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->setDesiredRatMode(I)V
    invoke-static {v7, v6}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1300(Lcom/android/internal/telephony/LteDcConfigHandler;I)V

    goto/16 :goto_0

    .line 230
    .end local v1    # "newMdType":I
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/LteDcConfigHandler$1;->this$0:Lcom/android/internal/telephony/LteDcConfigHandler;

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->contain4gRat(I)Z
    invoke-static {v7, v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1200(Lcom/android/internal/telephony/LteDcConfigHandler;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 231
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1100()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 232
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1100()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    aget-object v7, v7, v6

    const/4 v8, 0x7

    invoke-static {v7, v8}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->switchModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    goto :goto_1

    .line 234
    :cond_8
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$300()[I

    move-result-object v7

    aget v7, v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 235
    const/4 v7, -0x1

    if-ne v3, v7, :cond_a

    .line 236
    const/4 v3, 0x0

    .line 242
    :cond_9
    :goto_2
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1100()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-interface {v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkTypeRIL(I)V

    .line 243
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1100()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 244
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1100()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    aget-object v7, v7, v6

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->switchModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    goto :goto_1

    .line 238
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/LteDcConfigHandler$1;->this$0:Lcom/android/internal/telephony/LteDcConfigHandler;

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->contain4gRat(I)Z
    invoke-static {v7, v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1200(Lcom/android/internal/telephony/LteDcConfigHandler;I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 239
    const/4 v3, 0x0

    goto :goto_2

    .line 250
    .restart local v1    # "newMdType":I
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Switching to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " modem"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    .end local v1    # "newMdType":I
    .end local v2    # "oldMdType":I
    .end local v3    # "ratToSet":I
    .end local v5    # "simStatus":Ljava/lang/String;
    .end local v6    # "slotId":I
    :cond_c
    const-string v7, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 257
    .local v4, "serviceState":Landroid/telephony/ServiceState;
    if-eqz v4, :cond_d

    .line 258
    const-string v7, "simId"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 259
    .restart local v6    # "slotId":I
    iget-object v7, p0, Lcom/android/internal/telephony/LteDcConfigHandler$1;->this$0:Lcom/android/internal/telephony/LteDcConfigHandler;

    const/4 v8, 0x0

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->handleServiceStateChanged(Landroid/telephony/ServiceState;IZ)V
    invoke-static {v7, v4, v6, v8}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1400(Lcom/android/internal/telephony/LteDcConfigHandler;Landroid/telephony/ServiceState;IZ)V

    goto/16 :goto_0

    .line 262
    .end local v6    # "slotId":I
    :cond_d
    const-string v7, "Null serviceState"

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    .end local v4    # "serviceState":Landroid/telephony/ServiceState;
    :cond_e
    const-string v7, "android.intent.action.SERVICE_STATE_LTE_DC"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 265
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 266
    .restart local v4    # "serviceState":Landroid/telephony/ServiceState;
    if-eqz v4, :cond_f

    .line 267
    const-string v7, "simId"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 268
    .restart local v6    # "slotId":I
    iget-object v7, p0, Lcom/android/internal/telephony/LteDcConfigHandler$1;->this$0:Lcom/android/internal/telephony/LteDcConfigHandler;

    const/4 v8, 0x1

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->handleServiceStateChanged(Landroid/telephony/ServiceState;IZ)V
    invoke-static {v7, v4, v6, v8}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1400(Lcom/android/internal/telephony/LteDcConfigHandler;Landroid/telephony/ServiceState;IZ)V

    goto/16 :goto_0

    .line 270
    .end local v6    # "slotId":I
    :cond_f
    const-string v7, "Null serviceStateDc"

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    .end local v4    # "serviceState":Landroid/telephony/ServiceState;
    :cond_10
    sget-object v7, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_CAPABILITY_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 273
    # getter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$500()I

    move-result v7

    const/16 v8, -0x62

    if-eq v7, v8, :cond_11

    .line 274
    sget-object v7, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_CAPABILITY_SIM:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    # setter for: Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$502(I)I

    .line 276
    :cond_11
    iget-object v7, p0, Lcom/android/internal/telephony/LteDcConfigHandler$1;->this$0:Lcom/android/internal/telephony/LteDcConfigHandler;

    # invokes: Lcom/android/internal/telephony/LteDcConfigHandler;->handleSimSwitched()V
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->access$1500(Lcom/android/internal/telephony/LteDcConfigHandler;)V

    goto/16 :goto_0
.end method
