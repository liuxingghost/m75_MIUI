.class public Lcom/mediatek/simservs/xcap/XcapException;
.super Ljava/lang/Exception;
.source "XcapException.java"


# static fields
.field public static final AUTHENTICATION_EXCEPTION:I = 0x9

.field public static final AUTH_CHALLENGE_EXCEPTION:I = 0x6

.field public static final CONNECTION_POOL_TIMEOUT_EXCEPTION:I = 0x1

.field public static final CONNECT_TIMEOUT_EXCEPTION:I = 0x2

.field public static final CREDENTIALS_NOT_AVAILABLE_EXCEPTION:I = 0x7

.field public static final HTTP_EXCEPTION:I = 0xe

.field public static final HTTP_RECOVERABL_EEXCEPTION:I = 0x4

.field public static final INVALID_CREDENTIALS_EXCEPTION:I = 0x8

.field public static final MALFORMED_CHALLENGE_EXCEPTION:I = 0x5

.field public static final MALFORMED_COOKIE_EXCEPTION:I = 0xa

.field public static final NO_EXCEPTION:I = 0x0

.field public static final NO_HTTP_RESPONSE_EXCEPTION:I = 0x3

.field public static final PROTOCOL_EXCEPTION:I = 0xd

.field public static final REDIRECT_EXCEPTION:I = 0xb

.field public static final URI_EXCEPTION:I = 0xc

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mExceptionCode:I

.field public mHttpErrorCode:I

.field public mIsConnectionError:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "httpErrorCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 31
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 35
    iput p1, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 2
    .param p1, "httpException"    # Ljava/io/IOException;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 31
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 39
    instance-of v0, p1, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    if-eqz v0, :cond_0

    .line 40
    iput v1, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 42
    :cond_0
    instance-of v0, p1, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 45
    :cond_1
    instance-of v0, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_2

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 48
    :cond_2
    iput-boolean v1, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getExceptionCodeCode()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    return v0
.end method

.method public getHttpErrorCode()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    return v0
.end method

.method public isConnectionError()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    return v0
.end method
