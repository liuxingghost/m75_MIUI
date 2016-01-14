.class public final Landroid/content/pm/PackageParser$CollectCertificatesTask;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CollectCertificatesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field certs:[Ljava/security/cert/Certificate;

.field jarFile:Ljava/util/jar/JarFile;

.field jeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation
.end field

.field lruCache:Landroid/content/pm/PackageParser$ReadBufferLruCache;

.field readBuffer:[B

.field final synthetic this$0:Landroid/content/pm/PackageParser;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser;Ljava/util/jar/JarFile;Ljava/util/List;Landroid/content/pm/PackageParser$ReadBufferLruCache;[Ljava/security/cert/Certificate;)V
    .locals 0
    .param p2, "jarFile"    # Ljava/util/jar/JarFile;
    .param p4, "lruCache"    # Landroid/content/pm/PackageParser$ReadBufferLruCache;
    .param p5, "certs"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/List",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;",
            "Landroid/content/pm/PackageParser$ReadBufferLruCache;",
            "[",
            "Ljava/security/cert/Certificate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4510
    .local p3, "jeList":Ljava/util/List;, "Ljava/util/List<Ljava/util/jar/JarEntry;>;"
    iput-object p1, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->this$0:Landroid/content/pm/PackageParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4511
    iput-object p2, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->jarFile:Ljava/util/jar/JarFile;

    .line 4512
    iput-object p3, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->jeList:Ljava/util/List;

    .line 4513
    iput-object p4, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->lruCache:Landroid/content/pm/PackageParser$ReadBufferLruCache;

    .line 4514
    iput-object p5, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->certs:[Ljava/security/cert/Certificate;

    .line 4515
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4503
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$CollectCertificatesTask;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4519
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    .line 4520
    .local v6, "mThreadID":I
    const/4 v7, 0x0

    .line 4522
    .local v7, "resultStr":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "jeIndex":I
    :goto_0
    iget-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->jeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 4524
    iget-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->jeList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    .line 4525
    .local v3, "je":Ljava/util/jar/JarEntry;
    iget-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->lruCache:Landroid/content/pm/PackageParser$ReadBufferLruCache;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ReadBufferLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    iput-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->readBuffer:[B

    .line 4526
    iget-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->readBuffer:[B

    if-nez v8, :cond_0

    .line 4527
    const/16 v8, 0x2000

    new-array v8, v8, [B

    iput-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->readBuffer:[B

    .line 4530
    :cond_0
    iget-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->this$0:Landroid/content/pm/PackageParser;

    iget-object v9, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->jarFile:Ljava/util/jar/JarFile;

    iget-object v10, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->readBuffer:[B

    const/4 v11, 0x0

    # invokes: Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[BZ)[Ljava/security/cert/Certificate;
    invoke-static {v8, v9, v3, v10, v11}, Landroid/content/pm/PackageParser;->access$200(Landroid/content/pm/PackageParser;Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[BZ)[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 4531
    .local v5, "localCerts":[Ljava/security/cert/Certificate;
    iget-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->lruCache:Landroid/content/pm/PackageParser$ReadBufferLruCache;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->readBuffer:[B

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageParser$ReadBufferLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4538
    if-nez v5, :cond_3

    .line 4543
    new-instance v7, Ljava/lang/String;

    .end local v7    # "resultStr":Ljava/lang/String;
    const-string v8, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4572
    .end local v3    # "je":Ljava/util/jar/JarEntry;
    .end local v5    # "localCerts":[Ljava/security/cert/Certificate;
    .restart local v7    # "resultStr":Ljava/lang/String;
    :cond_1
    if-nez v7, :cond_2

    .line 4573
    new-instance v7, Ljava/lang/String;

    .end local v7    # "resultStr":Ljava/lang/String;
    const-string v8, "INSTALL_SUCCEEDED"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4575
    .restart local v7    # "resultStr":Ljava/lang/String;
    :cond_2
    return-object v7

    .line 4547
    .restart local v3    # "je":Ljava/util/jar/JarEntry;
    .restart local v5    # "localCerts":[Ljava/security/cert/Certificate;
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->certs:[Ljava/security/cert/Certificate;

    array-length v8, v8

    if-ge v1, v8, :cond_6

    .line 4548
    const/4 v0, 0x0

    .line 4549
    .local v0, "found":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 4550
    iget-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->certs:[Ljava/security/cert/Certificate;

    aget-object v8, v8, v1

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->certs:[Ljava/security/cert/Certificate;

    aget-object v8, v8, v1

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4552
    const/4 v0, 0x1

    .line 4556
    :cond_4
    if-eqz v0, :cond_5

    iget-object v8, p0, Landroid/content/pm/PackageParser$CollectCertificatesTask;->certs:[Ljava/security/cert/Certificate;

    array-length v8, v8

    array-length v9, v5

    if-eq v8, v9, :cond_8

    .line 4561
    :cond_5
    new-instance v7, Ljava/lang/String;

    .end local v7    # "resultStr":Ljava/lang/String;
    const-string v8, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4566
    .end local v0    # "found":Z
    .end local v2    # "j":I
    .restart local v7    # "resultStr":Ljava/lang/String;
    :cond_6
    if-nez v7, :cond_1

    .line 4522
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 4549
    .restart local v0    # "found":Z
    .restart local v2    # "j":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4547
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
