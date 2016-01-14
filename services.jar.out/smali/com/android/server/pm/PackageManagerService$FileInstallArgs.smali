.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field codeFileName:Ljava/lang/String;

.field created:Z

.field installDir:Ljava/io/File;

.field libraryPath:Ljava/lang/String;

.field resourceFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2, "packageURI"    # Landroid/net/Uri;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "dataDir"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 8302
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v0, p0

    move-object v1, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 8303
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 8285
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 8304
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 8305
    const-string v0, ".apk"

    # invokes: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->access$4300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8306
    .local v7, "apkName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 8307
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 8308
    new-instance v0, Ljava/io/File;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppLibInstallDir:Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 8309
    return-void

    .line 8304
    .end local v7    # "apkName":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 7
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .prologue
    .line 8287
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8288
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getPackageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 8285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 8291
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2, "fullCodePath"    # Ljava/lang/String;
    .param p3, "fullResourcePath"    # Ljava/lang/String;
    .param p4, "nativeLibraryPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 8293
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 8294
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 8285
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 8295
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8296
    .local v7, "codeFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 8297
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 8298
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 8299
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 8300
    return-void
.end method

.method private cleanUp()Z
    .locals 9

    .prologue
    .line 8545
    const/4 v3, 0x1

    .line 8546
    .local v3, "ret":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    .line 8547
    .local v4, "sourceDir":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v1

    .line 8548
    .local v1, "publicSourceDir":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 8549
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8550
    .local v5, "sourceFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 8551
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package source "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8552
    const/4 v3, 0x0

    .line 8555
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 8557
    .end local v5    # "sourceFile":Ljava/io/File;
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 8558
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8559
    .local v2, "publicSourceFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 8560
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package public source "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8562
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8563
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 8567
    .end local v2    # "publicSourceFile":Ljava/io/File;
    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 8568
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8569
    .local v0, "nativeLibraryFile":Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    .line 8570
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_4

    .line 8571
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t delete native library directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8575
    .end local v0    # "nativeLibraryFile":Ljava/io/File;
    :cond_4
    return v3
.end method

.method private getLibraryPathFromCodePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8533
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppLibInstallDir:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcePathFromCodePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8508
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v0

    .line 8509
    .local v0, "codePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8512
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8513
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8514
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8515
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8522
    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8523
    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8526
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8528
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v0
.end method

.method private setPermissions()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 8593
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8594
    const/16 v0, 0x1a4

    .line 8597
    .local v0, "filePermissions":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v1

    .line 8598
    .local v1, "retCode":I
    if-eqz v1, :cond_0

    .line 8599
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t set new package file permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The return code was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8603
    const/4 v2, 0x0

    .line 8607
    .end local v0    # "filePermissions":I
    .end local v1    # "retCode":I
    :cond_0
    return v2
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 8
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 8314
    const-string v3, "devicestoragemonitor"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceStorageMonitorService;

    .line 8316
    .local v0, "dsm":Lcom/android/server/DeviceStorageMonitorService;
    if-nez v0, :cond_0

    .line 8317
    const-string v3, "PackageManager"

    const-string v4, "Couldn\'t get low memory threshold; no free limit imposed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8318
    const-wide/16 v1, 0x0

    .line 8329
    .local v1, "lowThreshold":J
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.android.defcontainer"

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 8331
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v4

    invoke-interface {p1, v3, v4, v1, v2}, Lcom/android/internal/app/IMediaContainerService;->checkInternalFreeStorage(Landroid/net/Uri;ZJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 8333
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .end local v1    # "lowThreshold":J
    :goto_1
    return v3

    .line 8320
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->isMemoryLow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8321
    const-string v3, "PackageManager"

    const-string v4, "Memory is reported as being too low; aborting package install"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8322
    const/4 v3, 0x0

    goto :goto_1

    .line 8325
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->getMemoryLowThreshold()J

    move-result-wide v1

    .restart local v1    # "lowThreshold":J
    goto :goto_0

    .line 8333
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v3
.end method

.method cleanUpResourcesLI()V
    .locals 5

    .prologue
    .line 8579
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 8580
    .local v1, "sourceDir":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8581
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;)I

    move-result v0

    .line 8582
    .local v0, "retCode":I
    if-gez v0, :cond_0

    .line 8583
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8589
    .end local v0    # "retCode":I
    :cond_0
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 12
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, -0x4

    .line 8362
    if-eqz p2, :cond_1

    .line 8365
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->createCopyFile()V

    .line 8366
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 8368
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create temp copy package on : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8436
    :cond_0
    :goto_0
    return v1

    .line 8374
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8375
    .local v0, "codeFile":Ljava/io/File;
    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    if-nez v7, :cond_2

    .line 8377
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 8379
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->setPermissions()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 8388
    :cond_2
    const/4 v5, 0x0

    .line 8390
    .local v5, "out":Landroid/os/ParcelFileDescriptor;
    const/high16 v7, 0x30000000

    :try_start_1
    invoke-static {v0, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 8396
    const/4 v6, -0x4

    .line 8398
    .local v6, "ret":I
    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v8, "com.android.defcontainer"

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 8400
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-interface {p1, v7, v8, v5}, Lcom/android/internal/app/IMediaContainerService;->copyResource(Landroid/net/Uri;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/ParcelFileDescriptor;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 8402
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8403
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 8406
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 8407
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8411
    .local v2, "destResourceFile":Ljava/io/File;
    :try_start_3
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/android/internal/content/PackageHelper;->extractPublicFiles(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 8420
    .end local v2    # "destResourceFile":Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8421
    .local v4, "nativeLibraryFile":Ljava/io/File;
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copying native libraries to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8422
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 8423
    invoke-static {v4}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    .line 8424
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 8427
    :cond_4
    :try_start_4
    # invokes: Lcom/android/server/pm/PackageManagerService;->copyNativeLibrariesForInternalApp(Ljava/io/File;Ljava/io/File;)I
    invoke-static {v0, v4}, Lcom/android/server/pm/PackageManagerService;->access$4500(Ljava/io/File;Ljava/io/File;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    .line 8428
    .local v1, "copyRet":I
    if-ne v1, v11, :cond_0

    .end local v1    # "copyRet":I
    :goto_1
    move v1, v6

    .line 8436
    goto/16 :goto_0

    .line 8383
    .end local v4    # "nativeLibraryFile":Ljava/io/File;
    .end local v5    # "out":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "ret":I
    :catch_0
    move-exception v3

    .line 8384
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8391
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "out":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    .line 8392
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create file descriptor for : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8402
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "ret":I
    :catchall_0
    move-exception v7

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8403
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v7

    .line 8412
    .restart local v2    # "destResourceFile":Ljava/io/File;
    :catch_2
    move-exception v3

    .line 8413
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "PackageManager"

    const-string v8, "Couldn\'t create a new zip file for the public parts of a forward-locked app."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8415
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 8431
    .end local v2    # "destResourceFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "nativeLibraryFile":Ljava/io/File;
    :catch_3
    move-exception v3

    .line 8432
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "PackageManager"

    const-string v8, "Copying native libraries failed"

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8433
    const/16 v6, -0x6e

    goto :goto_1
.end method

.method createCopyFile()V
    .locals 3

    .prologue
    .line 8342
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    :goto_0
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 8345
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 8346
    .local v0, "codeFile":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 8347
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 8355
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 8356
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 8357
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getLibraryPathFromCodePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 8358
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 8359
    :goto_1
    return-void

    .line 8342
    .end local v0    # "codeFile":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    goto :goto_0

    .line 8350
    .restart local v0    # "codeFile":Ljava/io/File;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    goto :goto_1
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .param p1, "delete"    # Z

    .prologue
    .line 8612
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 8613
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(II)I
    .locals 1
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .prologue
    .line 8497
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 8498
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 8500
    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 8440
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 8441
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 8443
    :cond_0
    return p1
.end method

.method doRename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "status"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 8447
    if-eq p1, v8, :cond_1

    .line 8448
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 8492
    :cond_0
    :goto_0
    return v7

    .line 8451
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8452
    .local v4, "oldCodeFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8453
    .local v6, "oldResourceFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8456
    .local v5, "oldLibraryFile":Ljava/io/File;
    const-string v9, ".apk"

    # invokes: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2, v9}, Lcom/android/server/pm/PackageManagerService;->access$4300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8457
    .local v0, "apkName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8458
    .local v1, "newCodeFile":Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8461
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 8464
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8465
    .local v3, "newResFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8468
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 8471
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getLibraryPathFromCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8472
    .local v2, "newLibraryFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 8473
    invoke-static {v2}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    .line 8474
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 8476
    :cond_3
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 8477
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot rename native library directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8481
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 8484
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->setPermissions()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8488
    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 8492
    goto/16 :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8338
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    return-object v0
.end method

.method getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8538
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 8539
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getLibraryPathFromCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 8541
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8504
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    return-object v0
.end method
