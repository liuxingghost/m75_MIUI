.class abstract Landroid/view/HardwareRenderer$GlRenderer;
.super Landroid/view/HardwareRenderer;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "GlRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;,
        Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;
    }
.end annotation


# static fields
.field static final FUNCTOR_PROCESS_DELAY:I = 0x4

.field private static final OVERDRAW:[Ljava/lang/String;

.field private static final OVERDRAW_TYPE_COUNT:I = 0x1

.field private static final PROFILE_DRAW_COLORS:[I

.field private static final PROFILE_DRAW_CURRENT_FRAME_COLOR:I = -0x30a055b3

.field private static final PROFILE_DRAW_DP_PER_MS:I = 0x7

.field private static final PROFILE_DRAW_MARGIN:I = 0x0

.field private static final PROFILE_DRAW_THRESHOLD_COLOR:I = -0xa055b3

.field private static final PROFILE_DRAW_THRESHOLD_STROKE_WIDTH:I = 0x2

.field private static final PROFILE_DRAW_WIDTH:I = 0x3

.field static final SURFACE_STATE_ERROR:I = 0x0

.field static final SURFACE_STATE_SUCCESS:I = 0x1

.field static final SURFACE_STATE_UPDATED:I = 0x2

.field private static final VISUALIZERS:[Ljava/lang/String;

.field static sDirtyRegions:Z

.field static final sDirtyRegionsRequested:Z

.field static sEgl:Ljavax/microedition/khronos/egl/EGL10;

.field static sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field static final sEglContextStorage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/opengl/ManagedEGLContext;",
            ">;"
        }
    .end annotation
.end field

.field static sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field static final sEglLock:[Ljava/lang/Object;


# instance fields
.field mCanvas:Landroid/view/HardwareCanvas;

.field mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

.field mDebugDirtyRegions:Z

.field mDebugOverdraw:I

.field mDebugOverdrawLayer:Landroid/view/HardwareLayer;

.field mDebugOverdrawPaint:Landroid/graphics/Paint;

.field mDebugPaint:Landroid/graphics/Paint;

.field private mDestroyed:Z

.field mDirtyRegionsEnabled:Z

.field private mDrawDelta:J

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mEglThread:Ljava/lang/Thread;

.field mFrameCount:J

.field private final mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

.field mGl:Ljavax/microedition/khronos/opengles/GL;

.field final mGlVersion:I

.field mHeight:I

.field mName:Ljava/lang/String;

.field mProfileCurrentFrame:I

.field mProfileData:[F

.field mProfileEnabled:Z

.field mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mProfilePaint:Landroid/graphics/Paint;

.field mProfileShapes:[[F

.field mProfileVisualizerType:I

.field private final mRedrawClip:Landroid/graphics/Rect;

.field private final mSurfaceSize:[I

.field final mTranslucent:Z

.field mUpdateDirtyRegions:Z

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 856
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->PROFILE_DRAW_COLORS:[I

    .line 862
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "visual_bars"

    aput-object v2, v1, v3

    const-string/jumbo v2, "visual_lines"

    aput-object v2, v1, v4

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->VISUALIZERS:[Ljava/lang/String;

    .line 867
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "show"

    aput-object v2, v1, v3

    const-string v2, "count"

    aput-object v2, v1, v4

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->OVERDRAW:[Ljava/lang/String;

    .line 876
    new-array v1, v3, [Ljava/lang/Object;

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    .line 879
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    .line 898
    const-string v1, "debug.hwui.render_dirty_regions"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "dirtyProperty":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    .line 901
    sget-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    sput-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegionsRequested:Z

    .line 902
    return-void

    .line 856
    :array_0
    .array-data 4
        -0x30c19934
        -0x3023c6ee
        -0x30196800
    .end array-data
.end method

.method constructor <init>(IZ)V
    .locals 2
    .param p1, "glVersion"    # I
    .param p2, "translucent"    # Z

    .prologue
    const/4 v1, -0x1

    .line 934
    invoke-direct {p0}, Landroid/view/HardwareRenderer;-><init>()V

    .line 877
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 908
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    .line 911
    const/4 v0, -0x3

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 918
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    .line 927
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    .line 929
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurfaceSize:[I

    .line 930
    new-instance v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-direct {v0, p0}, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;-><init>(Landroid/view/HardwareRenderer$GlRenderer;)V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    .line 932
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 935
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    .line 936
    iput-boolean p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mTranslucent:Z

    .line 938
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->loadSystemProperties(Landroid/view/Surface;)Z

    .line 940
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/HardwareRenderer$GlRenderer;->setHWUIDebugLog(Z)V

    .line 942
    const-string v0, "debug.hwrenderer.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    # setter for: Landroid/view/HardwareRenderer;->mDebugHwRenderer:Z
    invoke-static {v0}, Landroid/view/HardwareRenderer;->access$002(Z)Z

    .line 943
    return-void
.end method

.method static synthetic access$200(Landroid/view/HardwareRenderer$GlRenderer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/HardwareRenderer$GlRenderer;

    .prologue
    .line 847
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/HardwareRenderer$GlRenderer;Landroid/view/View$AttachInfo;I)V
    .locals 0
    .param p0, "x0"    # Landroid/view/HardwareRenderer$GlRenderer;
    .param p1, "x1"    # Landroid/view/View$AttachInfo;
    .param p2, "x2"    # I

    .prologue
    .line 847
    invoke-direct {p0, p1, p2}, Landroid/view/HardwareRenderer$GlRenderer;->handleFunctorStatus(Landroid/view/View$AttachInfo;I)V

    return-void
.end method

.method static synthetic access$400(IF)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # F

    .prologue
    .line 847
    invoke-static {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I

    move-result v0

    return v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 847
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->PROFILE_DRAW_COLORS:[I

    return-object v0
.end method

.method private beginFrame(Landroid/view/HardwareCanvas;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "canvas"    # Landroid/view/HardwareCanvas;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .param p3, "surfaceState"    # I

    .prologue
    const-wide/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1637
    const-string v1, "beginFrame"

    invoke-static {v5, v6, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1639
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 1640
    const/4 p2, 0x0

    .line 1641
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/HardwareRenderer$GlRenderer;->beginFrame([I)V

    .line 1656
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    .line 1658
    :cond_1
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1659
    return-object p2

    .line 1643
    :cond_2
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurfaceSize:[I

    .line 1644
    .local v0, "size":[I
    invoke-static {v0}, Landroid/view/HardwareRenderer$GlRenderer;->beginFrame([I)V

    .line 1646
    aget v1, v0, v4

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    if-ne v1, v2, :cond_3

    aget v1, v0, v3

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    if-eq v1, v2, :cond_0

    .line 1647
    :cond_3
    aget v1, v0, v3

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    .line 1648
    aget v1, v0, v4

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 1650
    iget v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    invoke-virtual {p1, v1, v2}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 1652
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private buildDisplayList(Landroid/view/View;Landroid/view/HardwareCanvas;)Landroid/view/DisplayList;
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/view/HardwareCanvas;

    .prologue
    const-wide/16 v8, 0x8

    const/high16 v7, -0x80000000

    .line 1614
    iget-wide v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1615
    iget-object v2, p1, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 1631
    :goto_0
    return-object v2

    .line 1618
    :cond_0
    iget v3, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1620
    iget v3, p1, Landroid/view/View;->mPrivateFlags:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iput v3, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1622
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->startBuildDisplayListProfiling()J

    move-result-wide v0

    .line 1623
    .local v0, "buildDisplayListStartTime":J
    invoke-virtual {p2}, Landroid/view/HardwareCanvas;->clearLayerUpdates()V

    .line 1625
    const-string v3, "getDisplayList"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1626
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v2

    .line 1627
    .local v2, "displayList":Landroid/view/DisplayList;
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1629
    invoke-direct {p0, v0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->endBuildDisplayListProfiling(J)V

    goto :goto_0

    .line 1618
    .end local v0    # "buildDisplayListStartTime":J
    .end local v2    # "displayList":Landroid/view/DisplayList;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private checkEglErrorsForced()V
    .locals 4

    .prologue
    .line 1083
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1084
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 1087
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const/16 v1, 0x300e

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->fallback(Z)V

    .line 1090
    :cond_0
    return-void

    .line 1088
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkRenderContextUnsafe()I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1823
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v4, 0x3059

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1825
    :cond_0
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1826
    const-string v2, "HardwareRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglMakeCurrent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    invoke-direct {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->fallback(Z)V

    move v0, v1

    .line 1838
    :cond_1
    :goto_0
    return v0

    .line 1831
    :cond_2
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    if-eqz v0, :cond_3

    .line 1832
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->enableDirtyRegions()V

    .line 1833
    iput-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    .line 1835
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 19

    .prologue
    .line 1205
    const/4 v2, 0x1

    new-array v11, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1206
    .local v11, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 1207
    .local v7, "configsCount":[I
    sget-boolean v2, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->getConfig(Z)[I

    move-result-object v4

    .line 1210
    .local v4, "configSpec":[I
    const-string v2, "debug.hwui.print_config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1211
    .local v16, "debug":Ljava/lang/String;
    const-string v2, "all"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1212
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1214
    const/4 v2, 0x0

    aget v2, v7, v2

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1215
    .local v5, "debugConfigs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    aget v6, v7, v6

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1218
    move-object v14, v5

    .local v14, "arr$":[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v15, v14, v17

    .line 1219
    .local v15, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v15}, Landroid/view/HardwareRenderer$GlRenderer;->printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1218
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1223
    .end local v5    # "debugConfigs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v14    # "arr$":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v15    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :cond_0
    sget-object v8, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v9, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v12, 0x1

    move-object v10, v4

    move-object v13, v7

    invoke-interface/range {v8 .. v13}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1224
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eglChooseConfig failed "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    invoke-static {v6}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1226
    :cond_1
    const/4 v2, 0x0

    aget v2, v7, v2

    if-lez v2, :cond_3

    .line 1227
    const-string v2, "choice"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1228
    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-static {v2}, Landroid/view/HardwareRenderer$GlRenderer;->printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1230
    :cond_2
    const/4 v2, 0x0

    aget-object v2, v11, v2

    .line 1233
    :goto_1
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private createSurface(Landroid/view/Surface;)Z
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1397
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1399
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_2

    .line 1400
    :cond_0
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1401
    .local v0, "error":I
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_1

    .line 1402
    const-string v1, "HardwareRenderer"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 v1, 0x0

    .line 1416
    .end local v0    # "error":I
    :goto_0
    return v1

    .line 1405
    .restart local v0    # "error":I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWindowSurface failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1409
    .end local v0    # "error":I
    :cond_2
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1410
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglMakeCurrent failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1414
    :cond_3
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->enableDirtyRegions()V

    .line 1416
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V
    .locals 4
    .param p1, "dirty"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/view/HardwareCanvas;

    .prologue
    .line 1740
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eqz v0, :cond_1

    .line 1741
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1742
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    .line 1743
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x7fff0000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1746
    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1747
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Landroid/view/HardwareCanvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1750
    :cond_1
    return-void
.end method

.method private debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V
    .locals 8
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .param p3, "canvas"    # Landroid/view/HardwareCanvas;
    .param p4, "displayList"    # Landroid/view/DisplayList;

    .prologue
    const/4 v7, 0x1

    .line 1567
    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    if-ne v4, v7, :cond_1

    .line 1568
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    if-nez v4, :cond_2

    .line 1569
    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    invoke-virtual {p0, v4, v5, v7}, Landroid/view/HardwareRenderer$GlRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v4

    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    .line 1575
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1576
    const/4 v4, -0x1

    iput v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    .line 1592
    :cond_1
    :goto_1
    return-void

    .line 1570
    :cond_2
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    if-eq v4, v5, :cond_0

    .line 1572
    :cond_3
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iget v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/HardwareLayer;->resize(II)Z

    goto :goto_0

    .line 1580
    :cond_4
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4, p3, p2}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 1581
    .local v0, "layerCanvas":Landroid/view/HardwareCanvas;
    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->countOverdraw(Landroid/view/HardwareCanvas;)V

    .line 1582
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->save()I

    move-result v3

    .line 1583
    .local v3, "restoreCount":I
    const/4 v4, 0x0

    invoke-virtual {v0, p4, v4, v7}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    .line 1584
    invoke-virtual {v0, v3}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 1585
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4, p3}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1587
    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->getOverdraw(Landroid/view/HardwareCanvas;)F

    move-result v2

    .line 1588
    .local v2, "overdraw":F
    iget-object v4, p1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1590
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, p3, v2, v4}, Landroid/view/HardwareRenderer$GlRenderer;->drawOverdrawCounter(Landroid/view/HardwareCanvas;FF)V

    goto :goto_1
.end method

.method private static dpToPx(IF)I
    .locals 2
    .param p0, "dp"    # I
    .param p1, "density"    # F

    .prologue
    .line 1842
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawDisplayList(Landroid/view/View$AttachInfo;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;I)I
    .locals 9
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "canvas"    # Landroid/view/HardwareCanvas;
    .param p3, "displayList"    # Landroid/view/DisplayList;
    .param p4, "status"    # I

    .prologue
    const-wide/16 v7, 0x8

    .line 1697
    const-wide/16 v0, 0x0

    .line 1698
    .local v0, "drawDisplayListStartTime":J
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_0

    .line 1699
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1702
    :cond_0
    const-string v5, "drawDisplayList"

    invoke-static {v7, v8, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1704
    :try_start_0
    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    const/4 v6, 0x1

    invoke-virtual {p2, p3, v5, v6}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    or-int/2addr p4, v5

    .line 1707
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1710
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_1

    .line 1711
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1712
    .local v2, "now":J
    sub-long v5, v2, v0

    long-to-float v5, v5

    const v6, 0x358637bd    # 1.0E-6f

    mul-float v4, v5, v6

    .line 1713
    .local v4, "total":F
    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/lit8 v6, v6, 0x1

    aput v4, v5, v6

    .line 1716
    .end local v2    # "now":J
    .end local v4    # "total":F
    :cond_1
    invoke-direct {p0, p1, p4}, Landroid/view/HardwareRenderer$GlRenderer;->handleFunctorStatus(Landroid/view/View$AttachInfo;I)V

    .line 1717
    return p4

    .line 1707
    :catchall_0
    move-exception v5

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
.end method

.method private drawOverdrawCounter(Landroid/view/HardwareCanvas;FF)V
    .locals 7
    .param p1, "canvas"    # Landroid/view/HardwareCanvas;
    .param p2, "overdraw"    # F
    .param p3, "density"    # F

    .prologue
    const v6, 0x3e8f5c29    # 0.28f

    .line 1595
    const-string v2, "%.2fx"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1596
    .local v1, "text":Ljava/lang/String;
    invoke-direct {p0, p3}, Landroid/view/HardwareRenderer$GlRenderer;->setupPaint(F)Landroid/graphics/Paint;

    move-result-object v0

    .line 1598
    .local v0, "paint":Landroid/graphics/Paint;
    mul-float v2, v6, p2

    const/high16 v3, 0x40600000    # 3.5f

    div-float/2addr v2, v3

    sub-float v2, v6, v2

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1600
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, p3

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/HardwareCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1601
    return-void
.end method

.method private enableDirtyRegions()V
    .locals 2

    .prologue
    .line 1304
    sget-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    if-eqz v0, :cond_1

    .line 1305
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->preserveBackBuffer()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    if-nez v0, :cond_0

    .line 1306
    const-string v0, "HardwareRenderer"

    const-string v1, "Backbuffer cannot be preserved"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    sget-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegionsRequested:Z

    if-eqz v0, :cond_0

    .line 1315
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->isBackBufferPreserved()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    goto :goto_0
.end method

.method private endBuildDisplayListProfiling(J)V
    .locals 5
    .param p1, "getDisplayListStartTime"    # J

    .prologue
    .line 1675
    iget-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v3, :cond_0

    .line 1676
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1677
    .local v0, "now":J
    sub-long v3, v0, p1

    long-to-float v3, v3

    const v4, 0x358637bd    # 1.0E-6f

    mul-float v2, v3, v4

    .line 1679
    .local v2, "total":F
    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    aput v2, v3, v4

    .line 1681
    .end local v0    # "now":J
    .end local v2    # "total":F
    :cond_0
    return-void
.end method

.method private fallback(Z)V
    .locals 2
    .param p1, "fallback"    # Z

    .prologue
    .line 1093
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V

    .line 1094
    if-eqz p1, :cond_0

    .line 1096
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->setRequested(Z)V

    .line 1097
    const-string v0, "HardwareRenderer"

    const-string v1, "Mountain View, we\'ve had a problem here. Switching back to software rendering."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_0
    return-void
.end method

.method private handleFunctorStatus(Landroid/view/View$AttachInfo;I)V
    .locals 4
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "status"    # I

    .prologue
    .line 1755
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1757
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1764
    :cond_0
    :goto_0
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1766
    :cond_1
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1767
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    iput-object p1, v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    .line 1768
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1770
    :cond_2
    return-void

    .line 1759
    :cond_3
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 1760
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method private loadEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 3

    .prologue
    .line 1186
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1187
    .local v0, "eglConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v0, :cond_1

    .line 1189
    sget-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    if-eqz v1, :cond_0

    .line 1190
    const/4 v1, 0x0

    sput-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    .line 1191
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1192
    if-nez v0, :cond_1

    .line 1193
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglConfig not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1196
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglConfig not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1199
    :cond_1
    return-object v0
.end method

.method private prepareFrame(Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const-wide/16 v2, 0x8

    .line 1685
    const-string/jumbo v1, "prepareFrame"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1687
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->onPreDraw(Landroid/graphics/Rect;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1689
    .local v0, "status":I
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1691
    return v0

    .line 1689
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method private static printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5
    .param p0, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v4, 0x0

    .line 1237
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1239
    .local v0, "value":[I
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL configuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3024

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1242
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  RED_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3023

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1245
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  GREEN_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3022

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1248
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  BLUE_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3021

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1251
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ALPHA_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3025

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1254
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  DEPTH_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3026

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1257
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  STENCIL_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3032

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1260
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SAMPLE_BUFFERS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3031

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1263
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SAMPLES = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3033

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1266
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SURFACE_TYPE = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3027

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1269
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  CONFIG_CAVEAT = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-void
.end method

.method private static search([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1031
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1032
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1031
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private setupPaint(F)Landroid/graphics/Paint;
    .locals 4
    .param p1, "density"    # F

    .prologue
    const/4 v3, 0x0

    .line 1604
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1605
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    .line 1606
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1607
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, p1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1608
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1610
    :cond_0
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private startBuildDisplayListProfiling()J
    .locals 2

    .prologue
    .line 1663
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v0, :cond_1

    .line 1664
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 1665
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1666
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 1669
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1671
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private swapBuffers(I)V
    .locals 8
    .param p1, "status"    # I

    .prologue
    .line 1721
    and-int/lit8 v5, p1, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 1722
    const-wide/16 v0, 0x0

    .line 1723
    .local v0, "eglSwapBuffersStartTime":J
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_0

    .line 1724
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1727
    :cond_0
    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v6, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1729
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_1

    .line 1730
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1731
    .local v2, "now":J
    sub-long v5, v2, v0

    long-to-float v5, v5

    const v6, 0x358637bd    # 1.0E-6f

    mul-float v4, v5, v6

    .line 1732
    .local v4, "total":F
    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/lit8 v6, v6, 0x2

    aput v4, v5, v6

    .line 1735
    .end local v2    # "now":J
    .end local v4    # "total":F
    :cond_1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrors()V

    .line 1737
    .end local v0    # "eglSwapBuffersStartTime":J
    :cond_2
    return-void
.end method


# virtual methods
.method attachFunctor(Landroid/view/View$AttachInfo;I)Z
    .locals 4
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "functor"    # I

    .prologue
    .line 1781
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p2}, Landroid/view/HardwareCanvas;->attachFunctor(I)V

    .line 1783
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    iput-object p1, v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    .line 1784
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1785
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1786
    const/4 v0, 0x1

    .line 1788
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDraw()Z
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkEglErrors()V
    .locals 1

    .prologue
    .line 1077
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrorsForced()V

    .line 1080
    :cond_0
    return-void
.end method

.method checkRenderContext()I
    .locals 3

    .prologue
    .line 1803
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1804
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware acceleration can only be used with a single UI thread.\nOriginal thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1809
    :cond_0
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v0

    return v0
.end method

.method abstract countOverdraw(Landroid/view/HardwareCanvas;)V
.end method

.method abstract createCanvas()Landroid/view/HardwareCanvas;
.end method

.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 5
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 1323
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x3098

    aput v3, v0, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    aput v3, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 1325
    .local v0, "attribs":[I
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    if-eqz v3, :cond_1

    .end local v0    # "attribs":[I
    :goto_0
    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 1327
    .local v1, "context":Ljavax/microedition/khronos/egl/EGLContext;
    if-eqz v1, :cond_0

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_2

    .line 1329
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an EGL context. eglCreateContext failed with error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1325
    .end local v1    # "context":Ljavax/microedition/khronos/egl/EGLContext;
    .restart local v0    # "attribs":[I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1334
    .end local v0    # "attribs":[I
    .restart local v1    # "context":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_2
    return-object v1
.end method

.method createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 1274
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 1275
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1277
    :cond_0
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 1278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1280
    :cond_1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 1281
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1283
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_3

    .line 1284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HardwareRenderer cannot be used from multiple threads"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :cond_3
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->destroySurface()V

    .line 1292
    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createSurface(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1293
    const/4 v0, 0x0

    .line 1298
    :goto_0
    return-object v0

    .line 1296
    :cond_4
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initCaches()V

    .line 1298
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    goto :goto_0
.end method

.method abstract createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;
.end method

.method destroy(Z)V
    .locals 5
    .param p1, "full"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1339
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 1340
    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 1343
    :cond_0
    # getter for: Landroid/view/HardwareRenderer;->mDebugHwRenderer:Z
    invoke-static {}, Landroid/view/HardwareRenderer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1344
    const-string v0, "HardwareRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroy hardware render: full = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCanvas = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mDestroyed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_1
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    if-eqz v0, :cond_3

    .line 1349
    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/HardwareRenderer$GlRenderer;->setEnabled(Z)V

    .line 1358
    :goto_0
    return-void

    .line 1353
    :cond_3
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->destroySurface()V

    .line 1354
    invoke-virtual {p0, v3}, Landroid/view/HardwareRenderer$GlRenderer;->setEnabled(Z)V

    .line 1356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    .line 1357
    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    goto :goto_0
.end method

.method destroySurface()V
    .locals 5

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1362
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1366
    :cond_0
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1367
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1369
    :cond_1
    return-void
.end method

.method detachFunctor(I)V
    .locals 1
    .param p1, "functor"    # I

    .prologue
    .line 1774
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p1}, Landroid/view/HardwareCanvas;->detachFunctor(I)V

    .line 1777
    :cond_0
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
    .param p4, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 1484
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->canDraw()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1485
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->hasDirtyRegions()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1486
    const/16 p4, 0x0

    .line 1488
    :cond_0
    const/4 v10, 0x1

    move-object/from16 v0, p2

    iput-boolean v10, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p2

    iput-wide v10, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 1491
    move-object/from16 v0, p1

    iget v10, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v10, v10, 0x20

    move-object/from16 v0, p1

    iput v10, v0, Landroid/view/View;->mPrivateFlags:I

    .line 1494
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v9

    .line 1495
    .local v9, "surfaceState":I
    if-eqz v9, :cond_2

    .line 1496
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 1497
    .local v2, "canvas":Landroid/view/HardwareCanvas;
    move-object/from16 v0, p2

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    .line 1499
    iget-boolean v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v10, :cond_1

    .line 1500
    iget-object v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1503
    :cond_1
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0, v9}, Landroid/view/HardwareRenderer$GlRenderer;->beginFrame(Landroid/view/HardwareCanvas;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p4

    .line 1505
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->buildDisplayList(Landroid/view/View;Landroid/view/HardwareCanvas;)Landroid/view/DisplayList;

    move-result-object v3

    .line 1510
    .local v3, "displayList":Landroid/view/DisplayList;
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v10

    if-nez v10, :cond_3

    .line 1559
    .end local v2    # "canvas":Landroid/view/HardwareCanvas;
    .end local v3    # "displayList":Landroid/view/DisplayList;
    .end local v9    # "surfaceState":I
    :cond_2
    :goto_0
    return-void

    .line 1514
    .restart local v2    # "canvas":Landroid/view/HardwareCanvas;
    .restart local v3    # "displayList":Landroid/view/DisplayList;
    .restart local v9    # "surfaceState":I
    :cond_3
    const/4 v5, 0x0

    .line 1515
    .local v5, "saveCount":I
    const/4 v8, 0x0

    .line 1517
    .local v8, "status":I
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v6

    .line 1519
    .local v6, "start":J
    :try_start_0
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->prepareFrame(Landroid/graphics/Rect;)I

    move-result v8

    .line 1521
    invoke-virtual {v2}, Landroid/view/HardwareCanvas;->save()I

    move-result v5

    .line 1522
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/HardwareCanvas;)V

    .line 1524
    if-eqz v3, :cond_6

    .line 1525
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2, v3, v8}, Landroid/view/HardwareRenderer$GlRenderer;->drawDisplayList(Landroid/view/View$AttachInfo;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    or-int/2addr v8, v10

    .line 1533
    :goto_1
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 1534
    invoke-virtual {v2, v5}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 1535
    const/4 v10, 0x0

    move-object/from16 v0, p1

    iput-boolean v10, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1537
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 1539
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 1540
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 1542
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/HardwareRenderer$GlRenderer;->debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V

    .line 1543
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V

    .line 1544
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->drawProfileData(Landroid/view/View$AttachInfo;)V

    .line 1548
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->onPostDraw()V

    .line 1550
    invoke-direct {p0, v8}, Landroid/view/HardwareRenderer$GlRenderer;->swapBuffers(I)V

    .line 1552
    iget-boolean v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v10, :cond_5

    .line 1553
    iget-object v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1556
    :cond_5
    const/4 v10, 0x0

    move-object/from16 v0, p2

    iput-boolean v10, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    goto :goto_0

    .line 1528
    :cond_6
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1530
    :catch_0
    move-exception v4

    .line 1531
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "HardwareRenderer"

    const-string v11, "An error has occurred while drawing:"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1533
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 1534
    invoke-virtual {v2, v5}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 1535
    const/4 v10, 0x0

    move-object/from16 v0, p1

    iput-boolean v10, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1537
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 1539
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 1540
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 1542
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/HardwareRenderer$GlRenderer;->debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V

    .line 1543
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V

    .line 1544
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->drawProfileData(Landroid/view/View$AttachInfo;)V

    goto :goto_2

    .line 1533
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 1534
    invoke-virtual {v2, v5}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 1535
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-boolean v11, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1537
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    iput-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 1539
    iget-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_7

    .line 1540
    iget-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 1542
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/HardwareRenderer$GlRenderer;->debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V

    .line 1543
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V

    .line 1544
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->drawProfileData(Landroid/view/View$AttachInfo;)V

    :cond_7
    throw v10
.end method

.method abstract drawProfileData(Landroid/view/View$AttachInfo;)V
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v2, 0x0

    .line 1039
    iget-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v1, :cond_1

    .line 1040
    const-string v1, "\n\tDraw\tProcess\tExecute\n"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1042
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1044
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1045
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 1052
    :cond_0
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1057
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 1048
    .restart local v0    # "i":I
    :cond_2
    :try_start_1
    const-string v1, "\t%3.2f\t%3.2f\t%3.2f\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1050
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x2

    const/high16 v6, -0x40800000    # -1.0f

    aput v6, v4, v5

    aput v6, v2, v3

    aput v6, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1044
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1054
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method getCanvas()Landroid/view/HardwareCanvas;
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    return-object v0
.end method

.method abstract getConfig(Z)[I
.end method

.method getFrameCount()J
    .locals 2

    .prologue
    .line 1061
    iget-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    return-wide v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 1440
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    return v0
.end method

.method abstract getOverdraw(Landroid/view/HardwareCanvas;)F
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 1435
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    return v0
.end method

.method hasDirtyRegions()Z
    .locals 1

    .prologue
    .line 1068
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    return v0
.end method

.method abstract initAtlas()V
.end method

.method abstract initCaches()V
.end method

.method initialize(Landroid/view/Surface;)Z
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1104
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isRequested()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1105
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initializeEgl()Z

    move-result v0

    .line 1106
    .local v0, "contextCreated":Z
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v4

    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    .line 1107
    iput-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    .line 1108
    # getter for: Landroid/view/HardwareRenderer;->mDebugHwRenderer:Z
    invoke-static {}, Landroid/view/HardwareRenderer;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1109
    const-string v4, "HardwareRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hardware render initialize: mGl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v4, :cond_5

    .line 1113
    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 1114
    .local v1, "err":I
    const/16 v4, 0x3000

    if-eq v1, v4, :cond_2

    .line 1115
    invoke-virtual {p0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V

    .line 1116
    invoke-virtual {p0, v3}, Landroid/view/HardwareRenderer$GlRenderer;->setRequested(Z)V

    .line 1129
    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v4, :cond_4

    .line 1132
    .end local v0    # "contextCreated":Z
    .end local v1    # "err":I
    :goto_1
    return v2

    .line 1118
    .restart local v0    # "contextCreated":Z
    .restart local v1    # "err":I
    :cond_2
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-nez v4, :cond_3

    .line 1119
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->createCanvas()Landroid/view/HardwareCanvas;

    move-result-object v4

    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 1120
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/view/HardwareCanvas;->setName(Ljava/lang/String;)V

    .line 1122
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->setEnabled(Z)V

    .line 1124
    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initAtlas()V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1129
    goto :goto_1

    .end local v0    # "contextCreated":Z
    .end local v1    # "err":I
    :cond_5
    move v2, v3

    .line 1132
    goto :goto_1
.end method

.method initializeEgl()Z
    .locals 6

    .prologue
    .line 1147
    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 1148
    :try_start_0
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v2, :cond_2

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_2

    .line 1149
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1152
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1154
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v4, :cond_0

    .line 1155
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglGetDisplay failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1170
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1160
    :cond_0
    const/4 v2, 0x2

    :try_start_1
    new-array v1, v2, [I

    .line 1161
    .local v1, "version":[I
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1162
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglInitialize failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1166
    :cond_1
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrorsForced()V

    .line 1168
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->loadEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1170
    .end local v1    # "version":[I
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/ManagedEGLContext;

    .line 1173
    .local v0, "managedContext":Landroid/opengl/ManagedEGLContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/opengl/ManagedEGLContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    .line 1176
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v2, :cond_4

    .line 1177
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/HardwareRenderer$GlRenderer;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1178
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p0, v3}, Landroid/view/HardwareRenderer$GlRenderer;->createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1179
    const/4 v2, 0x1

    .line 1182
    :goto_1
    return v2

    .line 1173
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1182
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method invalidate(Landroid/view/Surface;)V
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v5, 0x1

    .line 1375
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1377
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 1378
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1379
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1380
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->setEnabled(Z)V

    .line 1383
    :cond_0
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createSurface(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1394
    :cond_1
    :goto_0
    return-void

    .line 1388
    :cond_2
    iput-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    .line 1390
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_1

    .line 1391
    invoke-virtual {p0, v5}, Landroid/view/HardwareRenderer$GlRenderer;->setEnabled(Z)V

    goto :goto_0
.end method

.method loadSystemProperties(Landroid/view/Surface;)Z
    .locals 14
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 948
    const/4 v0, 0x0

    .line 950
    .local v0, "changed":Z
    const-string v8, "debug.hwui.profile"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 951
    .local v6, "profiling":Ljava/lang/String;
    sget-object v8, Landroid/view/HardwareRenderer$GlRenderer;->VISUALIZERS:[Ljava/lang/String;

    invoke-static {v8, v6}, Landroid/view/HardwareRenderer$GlRenderer;->search([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 952
    .local v2, "graphType":I
    if-ltz v2, :cond_2

    const/4 v7, 0x1

    .line 954
    .local v7, "value":Z
    :goto_0
    iget v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    if-eq v2, v8, :cond_0

    .line 955
    const/4 v0, 0x1

    .line 956
    iput v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    .line 958
    const/4 v8, 0x0

    check-cast v8, [[F

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    .line 959
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    .line 961
    if-eqz v7, :cond_3

    .line 962
    new-instance v8, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;

    invoke-direct {v8, p0, v2}, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;-><init>(Landroid/view/HardwareRenderer$GlRenderer;I)V

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    .line 970
    :cond_0
    :goto_1
    if-nez v7, :cond_1

    .line 971
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 974
    :cond_1
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eq v7, v8, :cond_5

    .line 975
    const/4 v0, 0x1

    .line 976
    iput-boolean v7, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    .line 978
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v8, :cond_9

    .line 979
    const-string v8, "HardwareRenderer"

    const-string v9, "Profiling hardware renderer"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const-string v8, "debug.hwui.profile.maxframes"

    const/16 v9, 0x80

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 983
    .local v4, "maxProfileFrames":I
    mul-int/lit8 v8, v4, 0x3

    new-array v8, v8, [F

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    .line 984
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 985
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget-object v9, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v12, v3, 0x2

    const/high16 v13, -0x40800000    # -1.0f

    aput v13, v11, v12

    aput v13, v9, v10

    aput v13, v8, v3

    .line 984
    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    .line 952
    .end local v3    # "i":I
    .end local v4    # "maxProfileFrames":I
    .end local v7    # "value":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 964
    .restart local v7    # "value":Z
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    goto :goto_1

    .line 988
    .restart local v3    # "i":I
    .restart local v4    # "maxProfileFrames":I
    :cond_4
    new-instance v8, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v8}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 995
    .end local v3    # "i":I
    .end local v4    # "maxProfileFrames":I
    :goto_3
    const/4 v8, -0x3

    iput v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 998
    :cond_5
    const-string v8, "debug.hwui.show_dirty_regions"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 999
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eq v7, v8, :cond_6

    .line 1000
    const/4 v0, 0x1

    .line 1001
    iput-boolean v7, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    .line 1003
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eqz v8, :cond_6

    .line 1004
    const-string v8, "HardwareRenderer"

    const-string v9, "Debugging dirty regions"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_6
    const-string v8, "debug.hwui.overdraw"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1009
    .local v5, "overdraw":Ljava/lang/String;
    sget-object v8, Landroid/view/HardwareRenderer$GlRenderer;->OVERDRAW:[Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/view/HardwareRenderer$GlRenderer;->search([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1010
    .local v1, "debugOverdraw":I
    iget v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    if-eq v1, v8, :cond_7

    .line 1011
    const/4 v0, 0x1

    .line 1012
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    .line 1014
    iget v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    .line 1015
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    if-eqz v8, :cond_7

    .line 1016
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v8}, Landroid/view/HardwareLayer;->destroy()V

    .line 1017
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    .line 1018
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    .line 1023
    :cond_7
    # invokes: Landroid/view/HardwareRenderer;->nLoadProperties()Z
    invoke-static {}, Landroid/view/HardwareRenderer;->access$100()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1024
    const/4 v0, 0x1

    .line 1027
    :cond_8
    return v0

    .line 990
    .end local v1    # "debugOverdraw":I
    .end local v5    # "overdraw":Ljava/lang/String;
    :cond_9
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    .line 991
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 992
    const/4 v8, -0x1

    iput v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    goto :goto_3
.end method

.method onPostDraw()V
    .locals 0

    .prologue
    .line 1462
    return-void
.end method

.method onPreDraw(Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 1458
    const/4 v0, 0x0

    return v0
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1450
    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mName:Ljava/lang/String;

    .line 1451
    return-void
.end method

.method setup(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1426
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p1, p2}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 1428
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    .line 1429
    iput p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 1431
    :cond_0
    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;

    .line 1140
    :cond_0
    return-void
.end method

.method validate()Z
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContext()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
