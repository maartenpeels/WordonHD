.class Lcom/chartboost/sdk/Libraries/g$f;
.super Lcom/chartboost/sdk/Libraries/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field protected a:[Lcom/chartboost/sdk/Libraries/g$k;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lcom/chartboost/sdk/Libraries/g$k;)V
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/g$a;-><init>()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g$f;->b:Ljava/lang/String;

    .line 392
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    .line 393
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 447
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g$f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g$f;->b:Ljava/lang/String;

    .line 461
    :goto_0
    return-object v0

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    const-string v1, "object must contain the following key-value schema: {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 452
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g$k;->a(Lcom/chartboost/sdk/Libraries/g$k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string v2, ": ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g$k;->b(Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/g$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v2, "]>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 458
    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 460
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "key \'"

    const-string v7, ">"

    .line 395
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 396
    check-cast p1, Ljava/util/Map;

    .line 397
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 398
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is not a string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g$f;->b:Ljava/lang/String;

    move v0, v5

    .line 443
    :goto_0
    return v0

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    array-length v0, v0

    if-lt v0, v6, :cond_4

    move v0, v5

    .line 404
    :goto_1
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 405
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/g$k;->a(Lcom/chartboost/sdk/Libraries/g$k;)Ljava/lang/String;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g$k;->b(Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    .line 407
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 408
    invoke-virtual {v2, v8}, Lcom/chartboost/sdk/Libraries/g$a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no key for required mapping \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' : <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g$f;->b:Ljava/lang/String;

    move v0, v5

    .line 410
    goto :goto_0

    .line 413
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/g$a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' fails to match: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g$f;->b:Ljava/lang/String;

    move v0, v5

    .line 415
    goto/16 :goto_0

    .line 404
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    move v0, v6

    .line 420
    goto/16 :goto_0

    .line 421
    :cond_5
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    .line 422
    check-cast p1, Lorg/json/JSONObject;

    .line 423
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    array-length v0, v0

    if-lt v0, v6, :cond_7

    move v0, v5

    .line 424
    :goto_2
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 425
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/g$k;->a(Lcom/chartboost/sdk/Libraries/g$k;)Ljava/lang/String;

    move-result-object v1

    .line 426
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$f;->a:[Lcom/chartboost/sdk/Libraries/g$k;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g$k;->b(Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    .line 428
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 429
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/g$a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' fails to match: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/g$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/chartboost/sdk/Libraries/g$f;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 431
    goto/16 :goto_0

    .line 433
    :catch_0
    move-exception v3

    .line 434
    invoke-virtual {v2, v8}, Lcom/chartboost/sdk/Libraries/g$a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no key for required mapping \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' : <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g$f;->b:Ljava/lang/String;

    move v0, v5

    .line 436
    goto/16 :goto_0

    .line 424
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v6

    .line 441
    goto/16 :goto_0

    :cond_8
    move v0, v5

    .line 443
    goto/16 :goto_0
.end method
