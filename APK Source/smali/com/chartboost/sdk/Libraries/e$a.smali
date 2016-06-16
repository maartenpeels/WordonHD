.class public Lcom/chartboost/sdk/Libraries/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/Libraries/e$a;

.field private static c:Lorg/json/JSONObject;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lorg/json/JSONArray;

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    new-instance v0, Lcom/chartboost/sdk/Libraries/e$a;

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    .line 229
    sput-object v1, Lcom/chartboost/sdk/Libraries/e$a;->c:Lorg/json/JSONObject;

    .line 241
    sput-object v1, Lcom/chartboost/sdk/Libraries/e$a;->d:Ljava/util/Map;

    .line 254
    sput-object v1, Lcom/chartboost/sdk/Libraries/e$a;->e:Lorg/json/JSONArray;

    .line 266
    sput-object v1, Lcom/chartboost/sdk/Libraries/e$a;->f:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 4

    .prologue
    .line 378
    instance-of v0, p0, Lcom/chartboost/sdk/Libraries/e$a;

    if-eqz v0, :cond_1

    .line 379
    check-cast p0, Lcom/chartboost/sdk/Libraries/e$a;

    move-object v0, p0

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 380
    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_3

    .line 381
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0

    .line 384
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/e$a;

    .line 385
    if-nez v0, :cond_0

    .line 388
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/e;->b()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 389
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/e;->b()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    new-instance v0, Lcom/chartboost/sdk/Libraries/e$a;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/e$a;-><init>(Ljava/lang/Object;)V

    .line 391
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 3

    .prologue
    const-string v2, "CBJSON"

    .line 484
    if-nez p0, :cond_0

    .line 485
    const-string v0, "CBJSON"

    const-string v0, "null passed when creating new JSON object"

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    .line 495
    :goto_0
    return-object v0

    .line 489
    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    const-string v1, "CBJSON"

    const-string v1, "error creating new json object"

    invoke-static {v2, v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0
.end method


# virtual methods
.method public a(D)D
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 295
    :try_start_0
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 300
    :goto_0
    return-wide v0

    .line 296
    :catch_0
    move-exception v0

    move-wide v0, p1

    .line 297
    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, p1

    goto :goto_0
.end method

.method public a(F)F
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 310
    :try_start_0
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 315
    :goto_0
    return v0

    .line 311
    :catch_0
    move-exception v0

    move v0, p1

    .line 312
    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 325
    :try_start_0
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 330
    :goto_0
    return v0

    .line 326
    :catch_0
    move-exception v0

    move v0, p1

    .line 327
    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 201
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 203
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v2, "Error updating balances dictionary."

    .line 462
    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->c:Lorg/json/JSONObject;

    .line 463
    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->e:Lorg/json/JSONArray;

    .line 464
    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->d:Ljava/util/Map;

    .line 465
    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->f:Ljava/util/List;

    .line 466
    instance-of v0, p2, Lcom/chartboost/sdk/Libraries/e$a;

    if-eqz v0, :cond_2

    .line 467
    check-cast p2, Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/e$a;->n()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :cond_0
    :goto_1
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    const-string v1, "Error updating balances dictionary."

    invoke-static {p0, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 476
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 477
    :catch_1
    move-exception v0

    .line 478
    const-string v1, "Error updating balances dictionary."

    invoke-static {p0, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v1, p2

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 340
    :try_start_0
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 345
    :goto_0
    return-wide v0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    int-to-long v0, p1

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    return v0
.end method

.method public c(I)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 410
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 413
    :try_start_0
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0

    .line 417
    :cond_1
    if-nez p1, :cond_2

    move-object v0, p0

    .line 418
    goto :goto_0

    .line 420
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    move-object v0, p0

    .line 238
    :goto_0
    return-object v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 234
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->c:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 235
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->c:Lorg/json/JSONObject;

    .line 236
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->c:Lorg/json/JSONObject;

    goto :goto_0

    .line 238
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 358
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    .line 370
    :goto_0
    return v0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    goto :goto_0

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 366
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 367
    :cond_3
    iget-object v1, v0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 368
    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 370
    :cond_4
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->n()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->n()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->k()I

    move-result v0

    return v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 245
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 246
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->d:Ljava/util/Map;

    .line 247
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->d:Ljava/util/Map;

    .line 251
    :goto_0
    return-object v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 249
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    move-object v0, p0

    goto :goto_0

    .line 251
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public g()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 257
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONArray;

    move-object v0, p0

    .line 263
    :goto_0
    return-object v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 259
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->e:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    .line 260
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/e$a;->e:Lorg/json/JSONArray;

    .line 261
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->e:Lorg/json/JSONArray;

    goto :goto_0

    .line 263
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 281
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i()D
    .locals 2

    .prologue
    .line 289
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->m()Z

    move-result v0

    return v0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(F)F

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(I)I

    move-result v0

    return v0
.end method

.method public l()J
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Z)Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 400
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 404
    :goto_0
    return v0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 402
    iget-object p0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 404
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->g()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method
