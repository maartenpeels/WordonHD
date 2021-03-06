.class public Lcom/tapjoy/TJPoints;
.super Ljava/lang/Object;
.source "TJPoints.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyPoints"

.field private static tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

.field private static tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

.field private static tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

.field private static tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;


# instance fields
.field awardTapPoints:I

.field context:Landroid/content/Context;

.field spendTapPoints:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJPoints;->spendTapPoints:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJPoints;->awardTapPoints:I

    .line 31
    iput-object p1, p0, Lcom/tapjoy/TJPoints;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/tapjoy/TJPoints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJPoints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/tapjoy/TJPoints;->handleGetPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/tapjoy/TapjoyNotifier;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/tapjoy/TJPoints;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapjoy/TJPoints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJPoints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/tapjoy/TJPoints;->handleSpendPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Lcom/tapjoy/TapjoySpendPointsNotifier;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/tapjoy/TJPoints;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TJPoints;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJPoints;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/tapjoy/TJPoints;->handleAwardPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Lcom/tapjoy/TapjoyAwardPointsNotifier;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/tapjoy/TJPoints;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    return-object v0
.end method

.method private handleAwardPointsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const-string v6, "TapjoyPoints"

    .line 341
    const-string v2, ""

    .line 344
    .local v2, "message":Ljava/lang/String;
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 346
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_1

    .line 348
    const-string v5, "Success"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 355
    const-string v5, "TapPoints"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "pointsTotal":Ljava/lang/String;
    const-string v5, "CurrencyName"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "currencyName":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 365
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tapjoy/TJPoints;->saveTapPointsTotal(I)V

    .line 368
    sget-object v5, Lcom/tapjoy/TJPoints;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v0, v6}, Lcom/tapjoy/TapjoyAwardPointsNotifier;->getAwardPointsResponse(Ljava/lang/String;I)V

    move v5, v7

    .line 392
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :goto_0
    return v5

    .line 373
    .restart local v0    # "currencyName":Ljava/lang/String;
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v4    # "pointsTotal":Ljava/lang/String;
    :cond_0
    const-string v5, "TapjoyPoints"

    const-string v5, "Invalid XML: Missing tags."

    invoke-static {v6, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 378
    .restart local v3    # "nodeValue":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    const-string v5, "false"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    const-string v5, "Message"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 381
    const-string v5, "TapjoyPoints"

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object v5, Lcom/tapjoy/TJPoints;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    invoke-interface {v5, v2}, Lcom/tapjoy/TapjoyAwardPointsNotifier;->getAwardPointsResponseFailed(Ljava/lang/String;)V

    move v5, v7

    .line 384
    goto :goto_0

    .line 388
    :cond_3
    const-string v5, "TapjoyPoints"

    const-string v5, "Invalid XML: Missing <Success> tag."

    invoke-static {v6, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized handleGetPointsResponse(Ljava/lang/String;)Z
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const-string v7, "TapjoyPoints"

    .line 203
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 204
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_1

    .line 206
    const-string v7, "Success"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "nodeValue":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 213
    const-string v7, "TapPoints"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "points":Ljava/lang/String;
    const-string v7, "CurrencyName"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 217
    .local v3, "name":Ljava/lang/String;
    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    .line 222
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 223
    .local v5, "pointTotal":I
    invoke-virtual {p0}, Lcom/tapjoy/TJPoints;->getLocalTapPointsTotal()I

    move-result v2

    .line 230
    .local v2, "lastLocalPointTotal":I
    sget-object v7, Lcom/tapjoy/TJPoints;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    if-eqz v7, :cond_0

    .line 233
    const/16 v7, -0x270f

    if-eq v2, v7, :cond_0

    .line 236
    if-le v5, v2, :cond_0

    .line 238
    const-string v7, "TapjoyPoints"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "earned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-int v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v7, Lcom/tapjoy/TJPoints;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    sub-int v8, v5, v2

    invoke-interface {v7, v8}, Lcom/tapjoy/TapjoyEarnedPointsNotifier;->earnedTapPoints(I)V

    .line 245
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/tapjoy/TJPoints;->saveTapPointsTotal(I)V

    .line 248
    sget-object v7, Lcom/tapjoy/TJPoints;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v3, v8}, Lcom/tapjoy/TapjoyNotifier;->getUpdatePoints(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    const/4 v7, 0x1

    .line 268
    .end local v2    # "lastLocalPointTotal":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nodeValue":Ljava/lang/String;
    .end local v5    # "pointTotal":I
    .end local v6    # "points":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v7

    .line 252
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "nodeValue":Ljava/lang/String;
    .restart local v6    # "points":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "TapjoyPoints"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing XML and calling notifier: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nodeValue":Ljava/lang/String;
    .end local v6    # "points":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 259
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "nodeValue":Ljava/lang/String;
    .restart local v6    # "points":Ljava/lang/String;
    :cond_2
    const-string v7, "TapjoyPoints"

    const-string v8, "Invalid XML: Missing tags."

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 203
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nodeValue":Ljava/lang/String;
    .end local v6    # "points":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 264
    .restart local v0    # "document":Lorg/w3c/dom/Document;
    .restart local v4    # "nodeValue":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v7, "TapjoyPoints"

    const-string v8, "Invalid XML: Missing <Success> tag."

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleSpendPointsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const-string v6, "TapjoyPoints"

    .line 279
    const-string v2, ""

    .line 282
    .local v2, "message":Ljava/lang/String;
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 284
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_1

    .line 286
    const-string v5, "Success"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 293
    const-string v5, "TapPoints"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "pointsTotal":Ljava/lang/String;
    const-string v5, "CurrencyName"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "currencyName":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tapjoy/TJPoints;->saveTapPointsTotal(I)V

    .line 306
    sget-object v5, Lcom/tapjoy/TJPoints;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v0, v6}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponse(Ljava/lang/String;I)V

    move v5, v7

    .line 330
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :goto_0
    return v5

    .line 311
    .restart local v0    # "currencyName":Ljava/lang/String;
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v4    # "pointsTotal":Ljava/lang/String;
    :cond_0
    const-string v5, "TapjoyPoints"

    const-string v5, "Invalid XML: Missing tags."

    invoke-static {v6, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 316
    .restart local v3    # "nodeValue":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    const-string v5, "false"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 318
    const-string v5, "Message"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 319
    const-string v5, "TapjoyPoints"

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v5, Lcom/tapjoy/TJPoints;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    invoke-interface {v5, v2}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponseFailed(Ljava/lang/String;)V

    move v5, v7

    .line 322
    goto :goto_0

    .line 326
    :cond_3
    const-string v5, "TapjoyPoints"

    const-string v5, "Invalid XML: Missing <Success> tag."

    invoke-static {v6, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .prologue
    .line 142
    if-gez p1, :cond_0

    .line 144
    const-string v0, "TapjoyPoints"

    const-string v1, "spendTapPoints error: amount must be a positive number"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 148
    :cond_0
    iput p1, p0, Lcom/tapjoy/TJPoints;->awardTapPoints:I

    .line 150
    sput-object p2, Lcom/tapjoy/TJPoints;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .line 152
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJPoints$3;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJPoints$3;-><init>(Lcom/tapjoy/TJPoints;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getLocalTapPointsTotal()I
    .locals 5

    .prologue
    .line 55
    iget-object v2, p0, Lcom/tapjoy/TJPoints;->context:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "last_tap_points"

    const/16 v3, -0x270f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, "total":I
    return v1
.end method

.method public getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyNotifier;

    .prologue
    .line 68
    sput-object p1, Lcom/tapjoy/TJPoints;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJPoints$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJPoints$1;-><init>(Lcom/tapjoy/TJPoints;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    return-void
.end method

.method public saveTapPointsTotal(I)V
    .locals 5
    .param p1, "total"    # I

    .prologue
    .line 40
    iget-object v2, p0, Lcom/tapjoy/TJPoints;->context:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_tap_points"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V
    .locals 0
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .prologue
    .line 191
    sput-object p1, Lcom/tapjoy/TJPoints;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .line 192
    return-void
.end method

.method public spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoySpendPointsNotifier;

    .prologue
    .line 100
    if-gez p1, :cond_0

    .line 102
    const-string v0, "TapjoyPoints"

    const-string v1, "spendTapPoints error: amount must be a positive number"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJPoints;->spendTapPoints:Ljava/lang/String;

    .line 108
    sput-object p2, Lcom/tapjoy/TJPoints;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    .line 110
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJPoints$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJPoints$2;-><init>(Lcom/tapjoy/TJPoints;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
