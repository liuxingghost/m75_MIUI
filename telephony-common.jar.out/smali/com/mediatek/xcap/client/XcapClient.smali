.class public Lcom/mediatek/xcap/client/XcapClient;
.super Ljava/lang/Object;
.source "XcapClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/xcap/client/XcapClient$SSLSocketFactoryEx;
    }
.end annotation


# static fields
.field private static final MAX_SOCKET_CONNECTION:I = 0x1e

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0x7530

.field private static final TLS_TRUST_ALL:Z = true


# instance fields
.field private mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    const/16 v12, 0x1bb

    const/16 v10, 0x7530

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v8, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 92
    iput-object v8, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    .line 101
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 103
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 104
    invoke-static {v3, v9}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 105
    const-string v8, "MTK XCAP Client"

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 106
    const-string v8, "UTF-8"

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 108
    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 109
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 110
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 111
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoSndTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    const/16 v8, 0x2000

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 114
    invoke-static {v3, v9}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 115
    const/4 v8, 0x1

    invoke-static {v3, v8}, Lorg/apache/http/client/params/HttpClientParams;->setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V

    .line 118
    new-instance v0, Lcom/mediatek/xcap/client/XcapClient$1;

    invoke-direct {v0, p0}, Lcom/mediatek/xcap/client/XcapClient$1;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    .line 126
    .local v0, "connPerRoute":Lorg/apache/http/conn/params/ConnPerRoute;
    const-wide/16 v8, 0xbb8

    invoke-static {v3, v8, v9}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 127
    invoke-static {v3, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 128
    const/16 v8, 0x1e

    invoke-static {v3, v8}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 130
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 131
    .local v5, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v10

    const/16 v11, 0x50

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 137
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 138
    .local v7, "trustStore":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 139
    new-instance v6, Lcom/mediatek/xcap/client/XcapClient$SSLSocketFactoryEx;

    invoke-direct {v6, p0, v7}, Lcom/mediatek/xcap/client/XcapClient$SSLSocketFactoryEx;-><init>(Lcom/mediatek/xcap/client/XcapClient;Ljava/security/KeyStore;)V

    .line 140
    .local v6, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 141
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v8, v9, v6, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v6    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v7    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    new-instance v4, Lorg/apache/http/auth/AuthSchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/auth/AuthSchemeRegistry;-><init>()V

    .line 153
    .local v4, "registry":Lorg/apache/http/auth/AuthSchemeRegistry;
    const-string v8, "Digest"

    new-instance v9, Lorg/apache/http/impl/auth/DigestSchemeFactory;

    invoke-direct {v9}, Lorg/apache/http/impl/auth/DigestSchemeFactory;-><init>()V

    invoke-virtual {v4, v8, v9}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 157
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v3, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 160
    .local v2, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    iget-object v8, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v8, :cond_0

    .line 161
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v8, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 164
    :cond_0
    iget-object v8, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v9, Lcom/mediatek/xcap/client/XcapClient$2;

    invoke-direct {v9, p0}, Lcom/mediatek/xcap/client/XcapClient$2;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    invoke-virtual {v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 172
    return-void

    .line 143
    .end local v2    # "manager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v4    # "registry":Lorg/apache/http/auth/AuthSchemeRegistry;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v10

    invoke-direct {v8, v9, v10, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0
.end method

.method private execute(Lorg/apache/http/client/methods/HttpUriRequest;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 8
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    if-eqz p2, :cond_0

    .line 191
    move-object v0, p2

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 192
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {p1, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v1    # "header":Lorg/apache/http/Header;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget-object v5, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    if-eqz v5, :cond_1

    .line 197
    iget-object v5, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v5

    new-instance v6, Lorg/apache/http/auth/AuthScope;

    sget-object v7, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    invoke-direct {v6, v7}, Lorg/apache/http/auth/AuthScope;-><init>(Lorg/apache/http/auth/AuthScope;)V

    iget-object v7, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-interface {v5, v6, v7}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 201
    :cond_1
    iget-object v5, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 202
    .local v4, "response":Lorg/apache/http/HttpResponse;
    return-object v4
.end method

.method private setRequestEntity(Lorg/apache/http/client/methods/HttpPut;[BLjava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpPut;
    .param p2, "content"    # [B
    .param p3, "mimetype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0, p3}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 209
    return-void
.end method


# virtual methods
.method public delete(Ljava/net/URI;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/net/URI;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .param p3, "eTag"    # Ljava/lang/String;
    .param p4, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 258
    .local v0, "request":Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p4, :cond_0

    .line 259
    invoke-virtual {v0, p4, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/mediatek/xcap/client/XcapClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/mediatek/xcap/client/XcapClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 217
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[B[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 224
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[B[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .param p5, "eTag"    # Ljava/lang/String;
    .param p6, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[B[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;[B[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p4, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .param p5, "eTag"    # Ljava/lang/String;
    .param p6, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    .line 240
    .local v0, "request":Lorg/apache/http/client/methods/HttpPut;
    invoke-direct {p0, v0, p3, p2}, Lcom/mediatek/xcap/client/XcapClient;->setRequestEntity(Lorg/apache/http/client/methods/HttpPut;[BLjava/lang/String;)V

    .line 241
    if-eqz p6, :cond_0

    .line 242
    invoke-virtual {v0, p6, p5}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    invoke-direct {p0, v0, p4}, Lcom/mediatek/xcap/client/XcapClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public setAuthenticationCredentials(Lorg/apache/http/auth/UsernamePasswordCredentials;)V
    .locals 0
    .param p1, "credentials"    # Lorg/apache/http/auth/UsernamePasswordCredentials;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    .line 178
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 184
    :cond_0
    return-void
.end method
