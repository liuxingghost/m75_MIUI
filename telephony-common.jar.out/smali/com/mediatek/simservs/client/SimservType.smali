.class public abstract Lcom/mediatek/simservs/client/SimservType;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "SimservType.java"


# static fields
.field static final ATT_ACTIVE:Ljava/lang/String; = "active"

.field private static final Single_TC01_Document:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n    </resource-lists>\r\n"

.field private static final Single_TC02_Document:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <communication-diversion active=\"true\">\r\n            <NoReplyTimer>1000</NoReplyTimer>\r\n            <ruleset>\r\n                <rule id=\"CFB\">\r\n                    <conditions>\r\n                        <busy/>\r\n                        <media>audio</media>\r\n                    </conditions>\r\n                    <actions>\r\n                        <forward-to>\r\n                            <target>\"+886988555222\"</target>\r\n                            <notify-caller>true</notify-caller>\r\n                        </forward-to>\r\n                    </actions>\r\n                </rule>\r\n                <rule id=\"CFNRc\">\r\n                    <conditions>\r\n                        <not-reachable/>\r\n                        <media>audio</media>\r\n                    </conditions>\r\n                    <actions>\r\n                        <forward-to>\r\n                            <target>\"+886988555222\"</target>\r\n                            <notify-caller>true</notify-caller>\r\n                        </forward-to>\r\n                    </actions>\r\n                </rule>\r\n            </ruleset>\r\n        </communication-diversion>\r\n    </resource-lists>\r\n"

.field private static final Single_TC03_Document:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <outgoing-communication-barring active=\"true\">\r\n             <ruleset>\r\n                  <rule id=\"AO\">\r\n                       <actions>\r\n                            <allow>false</allow>\r\n                       </actions>\r\n                  </rule>\r\n             </ruleset>\r\n        </outgoing-communication-barring>\r\n    </resource-lists>\r\n"

.field private static final Single_TC04_Document:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <incoming-communication-barring active=\"true\">\r\n             <ruleset>\r\n                  <rule id=\"IR\">\r\n                       <conditions>\r\n                            <roaming/>\r\n                            <media>audio</media>\r\n                       </conditions>\r\n                       <actions>\r\n                            <allow>false</allow>\r\n                       </actions>\r\n                  </rule>\r\n             </ruleset>\r\n        </incoming-communication-barring>\r\n    </resource-lists>\r\n"

.field private static final Single_TC05_Document:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <outgoing-communication-barring active=\"true\">\r\n             <ruleset>\r\n                  <rule id=\"AO\">\r\n                       <actions>\r\n                            <allow>true</allow>\r\n                       </actions>\r\n                  </rule>\r\n             </ruleset>\r\n        </outgoing-communication-barring>\r\n    </resource-lists>\r\n"

.field private static final Single_TC06_Document:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <originating-identity-presentation active=\"true\">\r\n        </originating-identity-presentation>    </resource-lists>\r\n"

.field private static final Single_TC07_Document:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <originating-identity-presentation-restriction active=\"true\">\r\n        </originating-identity-presentation-restriction>    </resource-lists>\r\n"

.field private static final Single_TC08_Document:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <terminating-identity-presentation active=\"true\">\r\n        </terminating-identity-presentation>    </resource-lists>\r\n"

.field private static final Single_TC09_Document:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <terminating-identity-presentation-restriction active=\"true\">\r\n        </terminating-identity-presentation-restriction>    </resource-lists>\r\n"

.field private static final Single_TC10_Document:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <communication-waiting active=\"true\">\r\n        </communication-waiting>    </resource-lists>\r\n"

.field public static final TAG:Ljava/lang/String; = "SimservType"

.field private static final initialDocument:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <communication-waiting active=\"true\"/>\r\n        <originating-identity-presentation active=\"true\"/>\r\n        <originating-identity-presentation-restriction active=\"true\"/>\r\n        <outgoing-communication-barring active=\"true\">\r\n             <ruleset>\r\n                  <rule id=\"AO\">\r\n                       <actions>\r\n                            <allow>false</allow>\r\n                       </actions>\r\n                  </rule>\r\n             </ruleset>\r\n        </outgoing-communication-barring>\r\n        <incoming-communication-barring active=\"true\">\r\n             <ruleset>\r\n                  <rule id=\"IR\">\r\n                       <conditions>\r\n                            <roaming/>\r\n                            <media>audio</media>\r\n                       </conditions>\r\n                       <actions>\r\n                            <allow>false</allow>\r\n                       </actions>\r\n                  </rule>\r\n             </ruleset>\r\n        </incoming-communication-barring>\r\n        <communication-diversion active=\"true\">\r\n            <NoReplyTimer>1000</NoReplyTimer>\r\n            <ruleset>\r\n                <rule id=\"CFB\">\r\n                    <conditions>\r\n                        <busy/>\r\n                        <media>audio</media>\r\n                    </conditions>\r\n                    <actions>\r\n                        <forward-to>\r\n                            <target>\"+886988555222\"</target>\r\n                            <notify-caller>true</notify-caller>\r\n                        </forward-to>\r\n                    </actions>\r\n                </rule>\r\n                <rule id=\"CFNRc\">\r\n                    <conditions>\r\n                        <not-reachable/>\r\n                        <media>audio</media>\r\n                    </conditions>\r\n                    <actions>\r\n                        <forward-to>\r\n                            <target>\"+886988555222\"</target>\r\n                            <notify-caller>true</notify-caller>\r\n                        </forward-to>\r\n                    </actions>\r\n                </rule>\r\n            </ruleset>\r\n        </communication-diversion>\r\n        <communication-diversion-serv-cap active=\"true\">\r\n          <serv-cap-conditions>\r\n             <serv-cap-external-list provisioned=\"false\"></serv-cap-external-list>\r\n             <serv-cap-identity provisioned=\"true\"></serv-cap-identity>\r\n             <serv-cap-media>\r\n                <media>audio</media>\r\n                <media>video</media>\r\n              </serv-cap-media>\r\n             <serv-cap-presence-status provisioned=\"false\"></serv-cap-presence-status>\r\n             <serv-cap-validity provisioned=\"false\"></serv-cap-validity>\r\n          </serv-cap-conditions>\r\n          <serv-cap-actions>\r\n               <serv-cap-target>\r\n                  <telephony-type/>\r\n               </serv-cap-target>\r\n               <serv-cap-notify-served-user-on-outbound-call provisioned=\"false\">\r\n                 </serv-cap-notify-served-user-on-outbound-call>\r\n              <serv-cap-reveal-identity-to-caller provisioned=\"false\">\r\n                </serv-cap-reveal-identity-to-caller>\r\n              <serv-cap-reveal-served-user-identity-to-caller provisioned=\"false\">\r\n                </serv-cap-reveal-served-user-identity-to-caller>\r\n              <serv-cap-reveal-identity-to-target provisioned=\"false\">\r\n                </serv-cap-reveal-identity-to-target>\r\n          </serv-cap-actions>\r\n        </communication-diversion-serv-cap>\r\n        <communication-barring-serv-cap active=\"true\">\r\n            <serv-cap-conditions>\r\n                <serv-cap-communication-diverted provisioned=\"false\"></serv-cap-communication-diverted>\r\n                <serv-cap-external-list provisioned=\"false\"></serv-cap-external-list>\r\n                <serv-cap-identity provisioned=\"false\"></serv-cap-identity>\r\n                <serv-cap-media>\r\n                    <media>audio</media>\r\n                    <media>video</media>\r\n                </serv-cap-media>\r\n                <serv-cap-other-identity provisioned=\"false\"></serv-cap-other-identity>\r\n                <serv-cap-presence-status provisioned=\"false\"></serv-cap-presence-status>\r\n                <serv-cap-roaming provisioned=\"true\"></serv-cap-roaming>\r\n                <serv-cap-rule-deactivated provisioned=\"false\"></serv-cap-rule-deactivated>\r\n                <serv-cap-request-name provisioned=\"false\"></serv-cap-request-name>\r\n                <serv-cap-validity provisioned=\"false\"></serv-cap-validity>\r\n            </serv-cap-conditions>\r\n        </communication-barring-serv-cap>\r\n    </resource-lists>\r\n"


# instance fields
.field SS_TC:[Ljava/lang/String;

.field public mActived:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-boolean v2, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n    </resource-lists>\r\n"

    aput-object v1, v0, v2

    .line 283
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <communication-diversion active=\"true\">\r\n            <NoReplyTimer>1000</NoReplyTimer>\r\n            <ruleset>\r\n                <rule id=\"CFB\">\r\n                    <conditions>\r\n                        <busy/>\r\n                        <media>audio</media>\r\n                    </conditions>\r\n                    <actions>\r\n                        <forward-to>\r\n                            <target>\"+886988555222\"</target>\r\n                            <notify-caller>true</notify-caller>\r\n                        </forward-to>\r\n                    </actions>\r\n                </rule>\r\n                <rule id=\"CFNRc\">\r\n                    <conditions>\r\n                        <not-reachable/>\r\n                        <media>audio</media>\r\n                    </conditions>\r\n                    <actions>\r\n                        <forward-to>\r\n                            <target>\"+886988555222\"</target>\r\n                            <notify-caller>true</notify-caller>\r\n                        </forward-to>\r\n                    </actions>\r\n                </rule>\r\n            </ruleset>\r\n        </communication-diversion>\r\n    </resource-lists>\r\n"

    aput-object v2, v0, v1

    .line 284
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <outgoing-communication-barring active=\"true\">\r\n             <ruleset>\r\n                  <rule id=\"AO\">\r\n                       <actions>\r\n                            <allow>false</allow>\r\n                       </actions>\r\n                  </rule>\r\n             </ruleset>\r\n        </outgoing-communication-barring>\r\n    </resource-lists>\r\n"

    aput-object v2, v0, v1

    .line 285
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <incoming-communication-barring active=\"true\">\r\n             <ruleset>\r\n                  <rule id=\"IR\">\r\n                       <conditions>\r\n                            <roaming/>\r\n                            <media>audio</media>\r\n                       </conditions>\r\n                       <actions>\r\n                            <allow>false</allow>\r\n                       </actions>\r\n                  </rule>\r\n             </ruleset>\r\n        </incoming-communication-barring>\r\n    </resource-lists>\r\n"

    aput-object v2, v0, v1

    .line 286
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <outgoing-communication-barring active=\"true\">\r\n             <ruleset>\r\n                  <rule id=\"AO\">\r\n                       <actions>\r\n                            <allow>true</allow>\r\n                       </actions>\r\n                  </rule>\r\n             </ruleset>\r\n        </outgoing-communication-barring>\r\n    </resource-lists>\r\n"

    aput-object v2, v0, v1

    .line 287
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <originating-identity-presentation active=\"true\">\r\n        </originating-identity-presentation>    </resource-lists>\r\n"

    aput-object v2, v0, v1

    .line 288
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <originating-identity-presentation-restriction active=\"true\">\r\n        </originating-identity-presentation-restriction>    </resource-lists>\r\n"

    aput-object v2, v0, v1

    .line 289
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <terminating-identity-presentation active=\"true\">\r\n        </terminating-identity-presentation>    </resource-lists>\r\n"

    aput-object v2, v0, v1

    .line 290
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <terminating-identity-presentation-restriction active=\"true\">\r\n        </terminating-identity-presentation-restriction>    </resource-lists>\r\n"

    aput-object v2, v0, v1

    .line 291
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n        <communication-waiting active=\"true\">\r\n        </communication-waiting>    </resource-lists>\r\n"

    aput-object v2, v0, v1

    .line 292
    invoke-direct {p0, p4}, Lcom/mediatek/simservs/client/SimservType;->loadConfiguration(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method private loadConfiguration()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getContent()Ljava/lang/String;

    move-result-object v9

    .line 310
    .local v9, "xmlContent":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 311
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6}, Lorg/xml/sax/InputSource;-><init>()V

    .line 312
    .local v6, "is":Lorg/xml/sax/InputSource;
    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 315
    :try_start_0
    invoke-virtual {v2, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 321
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 322
    .local v1, "currentNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_0

    .line 323
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 324
    .local v0, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 325
    .local v7, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-lez v10, :cond_0

    .line 326
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 327
    invoke-interface {v7, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 328
    .local v8, "node":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "active"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 329
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 335
    .end local v0    # "activeElement":Lorg/w3c/dom/Element;
    .end local v5    # "i":I
    .end local v7    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "node":Lorg/w3c/dom/Node;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/mediatek/simservs/client/SimservType;->initServiceInstance(Lorg/w3c/dom/Document;)V

    .line 336
    return-void

    .line 316
    .end local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v4

    .line 317
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    new-instance v10, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v11, 0x1f4

    invoke-direct {v10, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v10

    .line 326
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "activeElement":Lorg/w3c/dom/Element;
    .restart local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i":I
    .restart local v7    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v8    # "node":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private loadConfiguration(Ljava/lang/String;)V
    .locals 16
    .param p1, "tc_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 340
    const-string v12, ""

    .line 341
    .local v12, "xmlContent":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 342
    .local v10, "nodeName":Ljava/lang/String;
    const-string v13, "SimservType"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadConfiguration():nodeName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v13, "Single_TC_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 346
    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 347
    .local v11, "tc_index":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/simservs/client/SimservType;->SS_TC:[Ljava/lang/String;

    add-int/lit8 v14, v11, -0x1

    aget-object v12, v13, v14

    .line 350
    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 352
    const-string v13, "SimservType"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadConfiguration():fail to get tested xml for nodeName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v12, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n    </resource-lists>\r\n"

    .line 362
    .end local v11    # "tc_index":I
    :goto_0
    sget-boolean v13, Lcom/mediatek/simservs/client/SimServs;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 363
    const-string v13, "SimservType"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "xmlContent="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 366
    .local v3, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7}, Lorg/xml/sax/InputSource;-><init>()V

    .line 367
    .local v7, "is":Lorg/xml/sax/InputSource;
    new-instance v13, Ljava/io/StringReader;

    invoke-direct {v13, v12}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 370
    :try_start_0
    invoke-virtual {v3, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 376
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 377
    .local v2, "currentNode":Lorg/w3c/dom/NodeList;
    sget-boolean v13, Lcom/mediatek/simservs/client/SimServs;->DEBUG:Z

    if-eqz v13, :cond_1

    .line 378
    const-string v13, "SimservType"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getNodeName()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lez v13, :cond_2

    .line 382
    const/4 v13, 0x0

    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 383
    .local v1, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 384
    .local v8, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v13

    if-lez v13, :cond_2

    .line 385
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v13

    if-ge v6, v13, :cond_2

    .line 386
    invoke-interface {v8, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 387
    .local v9, "node":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "active"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 388
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 395
    .end local v1    # "activeElement":Lorg/w3c/dom/Element;
    .end local v6    # "i":I
    .end local v8    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "node":Lorg/w3c/dom/Node;
    :cond_2
    sget-boolean v13, Lcom/mediatek/simservs/client/SimServs;->DEBUG:Z

    if-eqz v13, :cond_3

    .line 396
    const-string v13, "SimservType"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "xmldoc="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/simservs/client/SimservType;->initServiceInstance(Lorg/w3c/dom/Document;)V

    .line 400
    return-void

    .line 355
    .end local v2    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "is":Lorg/xml/sax/InputSource;
    .restart local v11    # "tc_index":I
    :cond_4
    const-string v13, "SimservType"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadConfiguration():get tested xml for nodeName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 360
    .end local v11    # "tc_index":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getContent()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 371
    .restart local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "is":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v5

    .line 372
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    new-instance v13, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v14, 0x1f4

    invoke-direct {v13, v14}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v13

    .line 385
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "activeElement":Lorg/w3c/dom/Element;
    .restart local v2    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "i":I
    .restart local v8    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "node":Lorg/w3c/dom/Node;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method public abstract initServiceInstance(Lorg/w3c/dom/Document;)V
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 300
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 408
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    if-eqz v0, :cond_0

    .line 409
    const-string v0, "active"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/simservs/client/SimservType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 411
    :cond_0
    const-string v0, "active"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/simservs/client/SimservType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
