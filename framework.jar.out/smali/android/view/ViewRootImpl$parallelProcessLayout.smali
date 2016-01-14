.class Landroid/view/ViewRootImpl$parallelProcessLayout;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "parallelProcessLayout"
.end annotation


# instance fields
.field mDesiredWindowHeight:I

.field mDesiredWindowWidth:I

.field mHostView:Landroid/view/View;

.field mLp:Landroid/view/WindowManager$LayoutParams;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 0
    .param p2, "hostView"    # Landroid/view/View;
    .param p3, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "desiredWindowWidth"    # I
    .param p5, "desiredWindowHeight"    # I

    .prologue
    .line 1408
    iput-object p1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    iput-object p2, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mHostView:Landroid/view/View;

    .line 1410
    iput-object p3, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 1411
    iput p4, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mDesiredWindowWidth:I

    .line 1412
    iput p5, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mDesiredWindowHeight:I

    .line 1413
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1416
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mParallelProcessLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$000(Landroid/view/ViewRootImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1417
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parallelProcessLayout, run()+ , this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mDesiredWindowWidth:I

    iget v4, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mDesiredWindowHeight:I

    # invokes: Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    invoke-static {v1, v2, v3, v4}, Landroid/view/ViewRootImpl;->access$100(Landroid/view/ViewRootImpl;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1423
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mHostView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_3

    .line 1426
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mHostView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1427
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mHostView:Landroid/view/View;

    iget v5, v5, Landroid/view/View;->mRight:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mHostView:Landroid/view/View;

    iget v5, v5, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mHostView:Landroid/view/View;

    iget v6, v6, Landroid/view/View;->mBottom:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mHostView:Landroid/view/View;

    iget v6, v6, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Region;->set(IIII)Z

    .line 1431
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_DRAW:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1432
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewRoot gatherTransparentRegion+ : mTransparentRegion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTmpLocation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",host = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mHostView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->mHostView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 1438
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_1

    .line 1439
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 1442
    :cond_1
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_DRAW:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1443
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewRoot gatherTransparentRegion- : mTransparentRegion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mWindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPreviousTransparentRegion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1450
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1451
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1461
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mParallelProcessLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$000(Landroid/view/ViewRootImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1462
    iget-object v1, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    # setter for: Landroid/view/ViewRootImpl;->mDidParallelProcess:Z
    invoke-static {v1, v7}, Landroid/view/ViewRootImpl;->access$302(Landroid/view/ViewRootImpl;Z)Z

    .line 1463
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parallelProcessLayout, run()- , this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    return-void

    .line 1455
    :catch_0
    move-exception v0

    .line 1456
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when set transparent region."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1461
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mParallelProcessLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$000(Landroid/view/ViewRootImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1462
    iget-object v2, p0, Landroid/view/ViewRootImpl$parallelProcessLayout;->this$0:Landroid/view/ViewRootImpl;

    # setter for: Landroid/view/ViewRootImpl;->mDidParallelProcess:Z
    invoke-static {v2, v7}, Landroid/view/ViewRootImpl;->access$302(Landroid/view/ViewRootImpl;Z)Z

    .line 1463
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parallelProcessLayout, run()- , this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method
