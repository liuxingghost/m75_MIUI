.class public Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;
.super Ljava/lang/Object;
.source "UriEncodeBitsSet.java"


# static fields
.field protected static final IPv4address:Ljava/util/BitSet;

.field protected static final IPv6address:Ljava/util/BitSet;

.field protected static final IPv6reference:Ljava/util/BitSet;

.field protected static final URI_reference:Ljava/util/BitSet;

.field protected static final abs_path:Ljava/util/BitSet;

.field protected static final absoluteURI:Ljava/util/BitSet;

.field public static final allowed_IPv6reference:Ljava/util/BitSet;

.field public static final allowed_abs_path:Ljava/util/BitSet;

.field public static final allowed_authority:Ljava/util/BitSet;

.field public static final allowed_fragment:Ljava/util/BitSet;

.field public static final allowed_host:Ljava/util/BitSet;

.field public static final allowed_opaque_part:Ljava/util/BitSet;

.field public static final allowed_query:Ljava/util/BitSet;

.field public static final allowed_reg_name:Ljava/util/BitSet;

.field public static final allowed_rel_path:Ljava/util/BitSet;

.field public static final allowed_userinfo:Ljava/util/BitSet;

.field public static final allowed_within_authority:Ljava/util/BitSet;

.field public static final allowed_within_path:Ljava/util/BitSet;

.field public static final allowed_within_query:Ljava/util/BitSet;

.field public static final allowed_within_userinfo:Ljava/util/BitSet;

.field protected static final alpha:Ljava/util/BitSet;

.field protected static final alphanum:Ljava/util/BitSet;

.field protected static final authority:Ljava/util/BitSet;

.field public static final control:Ljava/util/BitSet;

.field protected static defaultDocumentCharset:Ljava/lang/String; = null

.field protected static defaultDocumentCharsetByLocale:Ljava/lang/String; = null

.field protected static defaultDocumentCharsetByPlatform:Ljava/lang/String; = null

.field protected static defaultProtocolCharset:Ljava/lang/String; = null

.field public static final delims:Ljava/util/BitSet;

.field protected static final digit:Ljava/util/BitSet;

.field public static final disallowed_opaque_part:Ljava/util/BitSet;

.field public static final disallowed_rel_path:Ljava/util/BitSet;

.field protected static final domainlabel:Ljava/util/BitSet;

.field protected static final escaped:Ljava/util/BitSet;

.field protected static final fragment:Ljava/util/BitSet;

.field protected static final hex:Ljava/util/BitSet;

.field protected static final hier_part:Ljava/util/BitSet;

.field protected static final host:Ljava/util/BitSet;

.field protected static final hostname:Ljava/util/BitSet;

.field protected static final hostport:Ljava/util/BitSet;

.field protected static final mark:Ljava/util/BitSet;

.field protected static final net_path:Ljava/util/BitSet;

.field protected static final opaque_part:Ljava/util/BitSet;

.field protected static final param:Ljava/util/BitSet;

.field protected static final path:Ljava/util/BitSet;

.field protected static final path_segments:Ljava/util/BitSet;

.field protected static final pchar:Ljava/util/BitSet;

.field protected static final percent:Ljava/util/BitSet;

.field protected static final port:Ljava/util/BitSet;

.field protected static final query:Ljava/util/BitSet;

.field protected static final reg_name:Ljava/util/BitSet;

.field protected static final rel_path:Ljava/util/BitSet;

.field protected static final rel_segment:Ljava/util/BitSet;

.field protected static final relativeURI:Ljava/util/BitSet;

.field protected static final reserved:Ljava/util/BitSet;

.field protected static final rootPath:[C

.field protected static final scheme:Ljava/util/BitSet;

.field protected static final segment:Ljava/util/BitSet;

.field static final serialVersionUID:J = 0x864831aad836c36L

.field protected static final server:Ljava/util/BitSet;

.field public static final space:Ljava/util/BitSet;

.field protected static final toplabel:Ljava/util/BitSet;

.field protected static final unreserved:Ljava/util/BitSet;

.field public static final unwise:Ljava/util/BitSet;

.field protected static final uric:Ljava/util/BitSet;

.field protected static final uric_no_slash:Ljava/util/BitSet;

.field protected static final userinfo:Ljava/util/BitSet;

.field public static final within_userinfo:Ljava/util/BitSet;


# instance fields
.field protected _authority:[C

.field protected _fragment:[C

.field protected _host:[C

.field protected _is_IPv4address:Z

.field protected _is_IPv6reference:Z

.field protected _is_abs_path:Z

.field protected _is_hier_part:Z

.field protected _is_hostname:Z

.field protected _is_net_path:Z

.field protected _is_opaque_part:Z

.field protected _is_reg_name:Z

.field protected _is_rel_path:Z

.field protected _is_server:Z

.field protected _opaque:[C

.field protected _path:[C

.field protected _port:I

.field protected _query:[C

.field protected _scheme:[C

.field protected _uri:[C

.field protected _userinfo:[C

.field protected hash:I

.field protected protocolCharset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x2b

    const/16 v6, 0x3b

    const/16 v5, 0x25

    const/16 v4, 0x100

    .line 71
    const-string v1, "UTF-8"

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->defaultProtocolCharset:Ljava/lang/String;

    .line 77
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->defaultDocumentCharset:Ljava/lang/String;

    .line 78
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    .line 79
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->defaultDocumentCharsetByPlatform:Ljava/lang/String;

    .line 129
    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0x2f

    aput-char v3, v1, v2

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rootPath:[C

    .line 140
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->percent:Ljava/util/BitSet;

    .line 143
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->percent:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 159
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->digit:Ljava/util/BitSet;

    .line 162
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 163
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->digit:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->alpha:Ljava/util/BitSet;

    .line 182
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 183
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->alpha:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    .line 186
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->alpha:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 202
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->alphanum:Ljava/util/BitSet;

    .line 205
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->alphanum:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->alpha:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 206
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->alphanum:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->digit:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 222
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hex:Ljava/util/BitSet;

    .line 225
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hex:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->digit:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 226
    const/16 v0, 0x61

    :goto_3
    const/16 v1, 0x66

    if-gt v0, v1, :cond_3

    .line 227
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hex:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 229
    :cond_3
    const/16 v0, 0x41

    :goto_4
    const/16 v1, 0x46

    if-gt v0, v1, :cond_4

    .line 230
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hex:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 246
    :cond_4
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->escaped:Ljava/util/BitSet;

    .line 249
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->escaped:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->percent:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 250
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->escaped:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hex:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 266
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mark:Ljava/util/BitSet;

    .line 269
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mark:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 270
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mark:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 271
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mark:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 272
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mark:Ljava/util/BitSet;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 273
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mark:Ljava/util/BitSet;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 274
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mark:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 275
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mark:Ljava/util/BitSet;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 276
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mark:Ljava/util/BitSet;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 277
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mark:Ljava/util/BitSet;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 293
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unreserved:Ljava/util/BitSet;

    .line 296
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unreserved:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 297
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unreserved:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mark:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 313
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    .line 316
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 317
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 318
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 319
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 320
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 321
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 322
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 323
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 324
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 325
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 340
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric:Ljava/util/BitSet;

    .line 343
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 344
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 345
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->escaped:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 360
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric:Ljava/util/BitSet;

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->fragment:Ljava/util/BitSet;

    .line 374
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric:Ljava/util/BitSet;

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->query:Ljava/util/BitSet;

    .line 389
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    .line 392
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 393
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->escaped:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 394
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 395
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 396
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 397
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 398
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 399
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 400
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 415
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->param:Ljava/util/BitSet;

    .line 429
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->segment:Ljava/util/BitSet;

    .line 432
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->segment:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->pchar:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 433
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->segment:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 434
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->segment:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->param:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 449
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->path_segments:Ljava/util/BitSet;

    .line 452
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->path_segments:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 453
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->path_segments:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->segment:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 468
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->abs_path:Ljava/util/BitSet;

    .line 471
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->abs_path:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 472
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->abs_path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->path_segments:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 488
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    .line 491
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 492
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->escaped:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 493
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 494
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 495
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 496
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 497
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 498
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 499
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 500
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 501
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 516
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->opaque_part:Ljava/util/BitSet;

    .line 520
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->opaque_part:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 521
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->opaque_part:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 536
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->path:Ljava/util/BitSet;

    .line 539
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 540
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 546
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->digit:Ljava/util/BitSet;

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->port:Ljava/util/BitSet;

    .line 560
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv4address:Ljava/util/BitSet;

    .line 563
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv4address:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->digit:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 564
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv4address:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 579
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv6address:Ljava/util/BitSet;

    .line 582
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv6address:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hex:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 583
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv6address:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 584
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv6address:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv4address:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 599
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv6reference:Ljava/util/BitSet;

    .line 602
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv6reference:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 603
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv6reference:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv6address:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 604
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv6reference:Ljava/util/BitSet;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 619
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->toplabel:Ljava/util/BitSet;

    .line 622
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->toplabel:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 623
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->toplabel:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 638
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->toplabel:Ljava/util/BitSet;

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->domainlabel:Ljava/util/BitSet;

    .line 652
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hostname:Ljava/util/BitSet;

    .line 655
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hostname:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->toplabel:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 657
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hostname:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 672
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->host:Ljava/util/BitSet;

    .line 675
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->host:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hostname:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 677
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->host:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 692
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hostport:Ljava/util/BitSet;

    .line 695
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hostport:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->host:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 696
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hostport:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 697
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hostport:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->port:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 713
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    .line 716
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 717
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->escaped:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 718
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 719
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 720
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 721
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 722
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 723
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 724
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 730
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->within_userinfo:Ljava/util/BitSet;

    .line 733
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->within_userinfo:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 734
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->clear(I)V

    .line 735
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->clear(I)V

    .line 736
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->within_userinfo:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 737
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->within_userinfo:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 738
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->within_userinfo:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 753
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->server:Ljava/util/BitSet;

    .line 756
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->server:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 757
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->server:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 758
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->server:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hostport:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 774
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    .line 777
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 778
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->escaped:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 779
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 780
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 781
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 782
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 783
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 784
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 785
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 786
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 801
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->authority:Ljava/util/BitSet;

    .line 804
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->authority:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->server:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 805
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->authority:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 820
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->scheme:Ljava/util/BitSet;

    .line 823
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->scheme:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->alpha:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 824
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->scheme:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->digit:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 825
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->scheme:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 826
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->scheme:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 827
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->scheme:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 843
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_segment:Ljava/util/BitSet;

    .line 846
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_segment:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 847
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_segment:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->escaped:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 848
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 849
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_segment:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 850
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_segment:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 851
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_segment:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 852
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 853
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_segment:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 854
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_segment:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 869
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_path:Ljava/util/BitSet;

    .line 872
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 873
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 888
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->net_path:Ljava/util/BitSet;

    .line 891
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->net_path:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 892
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->net_path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->authority:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 893
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->net_path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 908
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hier_part:Ljava/util/BitSet;

    .line 911
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hier_part:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->net_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 912
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hier_part:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 914
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hier_part:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->query:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 929
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->relativeURI:Ljava/util/BitSet;

    .line 932
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->relativeURI:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->net_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 933
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->relativeURI:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 934
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->relativeURI:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 936
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->relativeURI:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->query:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 951
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->absoluteURI:Ljava/util/BitSet;

    .line 954
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->absoluteURI:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->scheme:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 955
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->absoluteURI:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 956
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->absoluteURI:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hier_part:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 957
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->absoluteURI:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 972
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URI_reference:Ljava/util/BitSet;

    .line 975
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URI_reference:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->absoluteURI:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 976
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URI_reference:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->relativeURI:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 977
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URI_reference:Ljava/util/BitSet;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 978
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URI_reference:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->fragment:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 987
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->control:Ljava/util/BitSet;

    .line 990
    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_5

    .line 991
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->control:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 990
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 993
    :cond_5
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->control:Ljava/util/BitSet;

    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 999
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->space:Ljava/util/BitSet;

    .line 1002
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->space:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1008
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->delims:Ljava/util/BitSet;

    .line 1011
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->delims:Ljava/util/BitSet;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1012
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->delims:Ljava/util/BitSet;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1013
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->delims:Ljava/util/BitSet;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1014
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->delims:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 1015
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->delims:Ljava/util/BitSet;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1021
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unwise:Ljava/util/BitSet;

    .line 1024
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unwise:Ljava/util/BitSet;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1025
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unwise:Ljava/util/BitSet;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1026
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unwise:Ljava/util/BitSet;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1027
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unwise:Ljava/util/BitSet;

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1028
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unwise:Ljava/util/BitSet;

    const/16 v2, 0x5e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1029
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unwise:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1030
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unwise:Ljava/util/BitSet;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1031
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->unwise:Ljava/util/BitSet;

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1037
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->disallowed_rel_path:Ljava/util/BitSet;

    .line 1040
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1041
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1047
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->disallowed_opaque_part:Ljava/util/BitSet;

    .line 1050
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1051
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1059
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_authority:Ljava/util/BitSet;

    .line 1062
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_authority:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->authority:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1063
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_authority:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1069
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_opaque_part:Ljava/util/BitSet;

    .line 1072
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_opaque_part:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1073
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_opaque_part:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1079
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_reg_name:Ljava/util/BitSet;

    .line 1082
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_reg_name:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1084
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_reg_name:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1090
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_userinfo:Ljava/util/BitSet;

    .line 1093
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_userinfo:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1095
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1101
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_userinfo:Ljava/util/BitSet;

    .line 1104
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_userinfo:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1105
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1112
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_IPv6reference:Ljava/util/BitSet;

    .line 1115
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_IPv6reference:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1117
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_IPv6reference:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1118
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_IPv6reference:Ljava/util/BitSet;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1125
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_host:Ljava/util/BitSet;

    .line 1128
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_host:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hostname:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1129
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_host:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1135
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_authority:Ljava/util/BitSet;

    .line 1138
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->server:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1139
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1140
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->clear(I)V

    .line 1141
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->clear(I)V

    .line 1142
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1143
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1144
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1150
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_abs_path:Ljava/util/BitSet;

    .line 1153
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1155
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->percent:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1156
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_abs_path:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->clear(I)V

    .line 1162
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_rel_path:Ljava/util/BitSet;

    .line 1165
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_rel_path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1166
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1167
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->clear(I)V

    .line 1173
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_path:Ljava/util/BitSet;

    .line 1176
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_path:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1177
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_path:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1178
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_path:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->clear(I)V

    .line 1179
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_path:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1180
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_path:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1186
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_query:Ljava/util/BitSet;

    .line 1189
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_query:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1190
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1196
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_query:Ljava/util/BitSet;

    .line 1199
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_query:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1200
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_within_query:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->reserved:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1206
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_fragment:Ljava/util/BitSet;

    .line 1209
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_fragment:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->uric:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1210
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->allowed_fragment:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1211
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->hash:I

    .line 61
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->_uri:[C

    .line 66
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->protocolCharset:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->_scheme:[C

    .line 89
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->_opaque:[C

    .line 94
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->_authority:[C

    .line 99
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->_userinfo:[C

    .line 104
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->_host:[C

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->_port:I

    .line 114
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->_path:[C

    .line 119
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->_query:[C

    .line 124
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->_fragment:[C

    return-void
.end method
