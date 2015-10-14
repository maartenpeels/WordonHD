.class public Lcom/tapjoy/TapjoyURLConnection;
.super Ljava/lang/Object;
.source "TapjoyURLConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyURLConnection"

.field public static final TYPE_GET:I = 0x0

.field public static final TYPE_POST:I = 0x1

.field public static unitTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyURLConnection;->unitTestMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v8, "TapjoyURLConnection"

    .line 215
    const/4 v1, 0x0

    .line 218
    .local v1, "contentLength":Ljava/lang/String;
    move-object v4, p1

    .line 221
    .local v4, "requestURL":Ljava/lang/String;
    :try_start_0
    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    const-string v5, "TapjoyURLConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestURL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 226
    .local v3, "httpURL":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 227
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v5, 0x3a98

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 228
    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 229
    const-string v5, "content-length"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "httpURL":Ljava/net/URL;
    :goto_0
    const-string v5, "TapjoyURLConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content-length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-object v1

    .line 231
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "TapjoyURLConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRedirectFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "getRedirectOnly"    # Z

    .prologue
    .line 64
    new-instance v16, Lcom/tapjoy/TapjoyHttpURLResponse;

    invoke-direct/range {v16 .. v16}, Lcom/tapjoy/TapjoyHttpURLResponse;-><init>()V

    .line 65
    .local v16, "tapjoyResponse":Lcom/tapjoy/TapjoyHttpURLResponse;
    const/4 v3, 0x0

    .line 66
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 67
    .local v9, "rd":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 68
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 72
    .local v8, "line":Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 74
    .local v12, "requestURL":Ljava/lang/String;
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-nez p3, :cond_2

    const-string v19, "get"

    :goto_0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-boolean v17, Lcom/tapjoy/TapjoyURLConnection;->unitTestMode:Z

    if-eqz v17, :cond_4

    .line 79
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 82
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 84
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v11, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 85
    .local v11, "request":Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {v2, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 93
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpPost;
    .local v13, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    .line 95
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v9    # "rd":Ljava/io/BufferedReader;
    .local v10, "rd":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 131
    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .end local v10    # "rd":Ljava/io/BufferedReader;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    :cond_0
    :goto_2
    if-nez p4, :cond_8

    .line 133
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 135
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .local v15, "sb":Ljava/lang/StringBuilder;
    :goto_3
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 137
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 168
    :catch_0
    move-exception v17

    move-object/from16 v5, v17

    move-object v10, v9

    .line 170
    .end local v9    # "rd":Ljava/io/BufferedReader;
    .end local v12    # "requestURL":Ljava/lang/String;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    :goto_4
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz v3, :cond_d

    :try_start_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_d

    .line 179
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 180
    .end local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 182
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :goto_5
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 184
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 190
    :catch_1
    move-exception v17

    move-object/from16 v6, v17

    .line 192
    .local v6, "ex":Ljava/lang/Exception;
    :goto_6
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception trying to get error code/content: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_7
    const-string v17, "TapjoyURLConnection"

    const-string v18, "--------------------"

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "response status: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "response size: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->contentLength:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v17, "TapjoyURLConnection"

    const-string v18, "response: "

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 202
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "redirectURL: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1
    const-string v17, "TapjoyURLConnection"

    const-string v18, "--------------------"

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-object v16

    .line 74
    .restart local v12    # "requestURL":Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string v19, "post"

    goto/16 :goto_0

    .line 89
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    :cond_3
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v11, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 90
    .local v11, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v2, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    goto/16 :goto_1

    .line 99
    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 100
    .local v7, "httpURL":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 103
    if-eqz p4, :cond_5

    .line 104
    const/16 v17, 0x0

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 106
    :cond_5
    const/16 v17, 0x3a98

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 107
    const/16 v17, 0x7530

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 110
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 112
    const-string v17, "POST"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 115
    :cond_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 117
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    .line 120
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->headerFields:Ljava/util/Map;

    .line 123
    if-nez p4, :cond_0

    .line 126
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v9    # "rd":Ljava/io/BufferedReader;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 140
    .end local v7    # "httpURL":Ljava/net/URL;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    :try_start_6
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v14, v15

    .line 143
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    :try_start_7
    move-object/from16 v0, v16

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    move/from16 v17, v0

    const/16 v18, 0x12e

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 144
    const-string v17, "Location"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    .line 146
    :cond_9
    const-string v17, "content-length"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v4

    .line 148
    .local v4, "contentLength":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 152
    :try_start_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->contentLength:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 160
    :cond_a
    :goto_8
    if-eqz v9, :cond_b

    .line 162
    :try_start_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 163
    const/4 v9, 0x0

    .line 166
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 154
    :catch_2
    move-exception v17

    move-object/from16 v5, v17

    .line 156
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v17, "TapjoyURLConnection"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_8

    .line 168
    .end local v4    # "contentLength":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "requestURL":Ljava/lang/String;
    :catch_3
    move-exception v17

    move-object/from16 v5, v17

    move-object v15, v14

    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    move-object v10, v9

    .end local v9    # "rd":Ljava/io/BufferedReader;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 187
    .end local v10    # "rd":Ljava/io/BufferedReader;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    :try_start_a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_7

    .line 190
    .end local v9    # "rd":Ljava/io/BufferedReader;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :catch_4
    move-exception v17

    move-object/from16 v6, v17

    move-object v14, v15

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    move-object v9, v10

    .end local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v17

    move-object/from16 v6, v17

    move-object v14, v15

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    goto/16 :goto_6

    .end local v9    # "rd":Ljava/io/BufferedReader;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_d
    move-object v14, v15

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    move-object v9, v10

    .end local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v9    # "rd":Ljava/io/BufferedReader;
    goto/16 :goto_7
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tapjoy/TapjoyHttpURLResponse;"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 39
    invoke-static {p2, v1}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/util/Map;I)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/tapjoy/TapjoyHttpURLResponse;"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method
