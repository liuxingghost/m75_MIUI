.class Landroid/net/MobileDataStateTracker$DhcpThread;
.super Ljava/lang/Thread;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpThread"
.end annotation


# instance fields
.field mDhcpResult:Landroid/net/DhcpResults;

.field mIntfName:Ljava/lang/String;

.field mIpType:I

.field mTracker:Landroid/net/MobileDataStateTracker;

.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker;I)V
    .locals 1
    .param p2, "tracker"    # Landroid/net/MobileDataStateTracker;
    .param p3, "ipType"    # I

    .prologue
    .line 1342
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1343
    iput-object p2, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mTracker:Landroid/net/MobileDataStateTracker;

    .line 1344
    iput p3, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mIpType:I

    .line 1345
    # getter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {p2}, Landroid/net/MobileDataStateTracker;->access$1800(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mIntfName:Ljava/lang/String;

    .line 1346
    return-void
.end method

.method private startDhcp()Landroid/net/DhcpResults;
    .locals 5

    .prologue
    .line 1370
    const/4 v0, 0x0

    .line 1371
    .local v0, "bRet":Z
    new-instance v1, Landroid/net/DhcpResults;

    invoke-direct {v1}, Landroid/net/DhcpResults;-><init>()V

    .line 1373
    .local v1, "dhcpResult":Landroid/net/DhcpResults;
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpThread] startDhcp, ipType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mIpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 1374
    iget v2, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mIpType:I

    packed-switch v2, :pswitch_data_0

    .line 1384
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DhcpThread] unknown ip type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mIpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for startDhcp!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/MobileDataStateTracker;->access$1700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 1388
    :goto_0
    if-nez v0, :cond_0

    .line 1389
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v3, "[DhcpThread] startDhcp failed!!"

    # invokes: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/MobileDataStateTracker;->access$1700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 1390
    const/4 v1, 0x0

    .line 1393
    :cond_0
    return-object v1

    .line 1376
    :pswitch_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mIntfName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v0

    .line 1377
    goto :goto_0

    .line 1380
    :pswitch_1
    iget-object v2, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mIntfName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/net/NetworkUtils;->runDhcpv6(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v0

    .line 1381
    goto :goto_0

    .line 1374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private stopDhcp()Z
    .locals 4

    .prologue
    .line 1349
    const/4 v0, 0x0

    .line 1350
    .local v0, "bRet":Z
    iget-object v1, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v2, "[DhcpThread] stopDhcp"

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 1352
    iget v1, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mIpType:I

    packed-switch v1, :pswitch_data_0

    .line 1362
    iget-object v1, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DhcpThread] unknown ip type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mIpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for stopDhcp!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/MobileDataStateTracker;->access$1700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 1366
    :goto_0
    return v0

    .line 1354
    :pswitch_0
    iget-object v1, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mIntfName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v0

    .line 1355
    goto :goto_0

    .line 1358
    :pswitch_1
    iget-object v1, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mIntfName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcpv6(Ljava/lang/String;)Z

    move-result v0

    .line 1359
    goto :goto_0

    .line 1352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1398
    iget-object v3, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DhcpThread] start, apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mTracker:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 1399
    # getter for: Landroid/net/MobileDataStateTracker;->IMS_APN:Ljava/lang/String;
    invoke-static {}, Landroid/net/MobileDataStateTracker;->access$600()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mTracker:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Landroid/net/MobileDataStateTracker;->EMERGENCY_APN:Ljava/lang/String;
    invoke-static {}, Landroid/net/MobileDataStateTracker;->access$700()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mTracker:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v4, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mTracker:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 1402
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker$DhcpThread;->stopDhcp()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1403
    iget-object v3, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v4, "[DhcpThread] stopDhcp failed!!"

    # invokes: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 1410
    :cond_1
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker$DhcpThread;->startDhcp()Landroid/net/DhcpResults;

    move-result-object v3

    iput-object v3, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mDhcpResult:Landroid/net/DhcpResults;

    .line 1411
    iget-object v3, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mDhcpResult:Landroid/net/DhcpResults;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mDhcpResult:Landroid/net/DhcpResults;

    iget-object v3, v3, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v3, :cond_2

    .line 1412
    iget-object v3, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mDhcpResult:Landroid/net/DhcpResults;

    iget-object v3, v3, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    .line 1413
    .local v0, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1414
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1415
    .local v2, "lp":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 1416
    .local v1, "inetAddr":Ljava/net/InetAddress;
    iget-object v3, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->mTracker:Landroid/net/MobileDataStateTracker;

    # getter for: Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->access$1500(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1422
    .end local v0    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    .end local v2    # "lp":[Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    .line 1420
    :cond_3
    iget-object v3, p0, Landroid/net/MobileDataStateTracker$DhcpThread;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v4, "[DhcpThread] apn type is not IMS/Emergency, leave DhcpThread!!"

    # invokes: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->access$1700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto :goto_0
.end method
