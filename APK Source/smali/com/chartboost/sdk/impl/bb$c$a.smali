.class Lcom/chartboost/sdk/impl/bb$c$a;
.super Lcom/chartboost/sdk/impl/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bb$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/l",
        "<",
        "Lcom/chartboost/sdk/impl/bb$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bb$c;

.field private b:Lcom/chartboost/sdk/impl/ba;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/bb$c;ILjava/lang/String;Lcom/chartboost/sdk/impl/ba;)V
    .locals 1

    .prologue
    .line 224
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/chartboost/sdk/impl/l;-><init>(ILjava/lang/String;Lcom/chartboost/sdk/impl/n$a;)V

    .line 226
    iput-object p4, p0, Lcom/chartboost/sdk/impl/bb$c$a;->b:Lcom/chartboost/sdk/impl/ba;

    .line 228
    return-void
.end method


# virtual methods
.method protected a(Lcom/chartboost/sdk/impl/i;)Lcom/chartboost/sdk/impl/n;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/i;",
            ")",
            "Lcom/chartboost/sdk/impl/n",
            "<",
            "Lcom/chartboost/sdk/impl/bb$b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v4, "Request "

    const-string v3, "CBRequestManager"

    .line 259
    .line 262
    iget v0, p1, Lcom/chartboost/sdk/impl/i;->a:I

    .line 263
    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    .line 264
    const-string v1, "CBRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bb$c$a;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ba;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed. Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request failed. Response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is not valid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    move-object v0, v7

    .line 294
    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 295
    new-instance v1, Lcom/chartboost/sdk/impl/bb$b;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/chartboost/sdk/impl/bb$b;-><init>(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/i;)V

    invoke-static {v1, v7}, Lcom/chartboost/sdk/impl/n;->a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/b$a;)Lcom/chartboost/sdk/impl/n;

    move-result-object v0

    .line 297
    :goto_1
    return-object v0

    .line 269
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/chartboost/sdk/impl/i;->b:[B

    .line 270
    if-eqz v1, :cond_5

    .line 271
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v2

    .line 272
    :goto_2
    if-eqz v1, :cond_2

    .line 273
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 274
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 275
    :try_start_1
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bb$c$a;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ba;->l()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v3

    .line 276
    const-string v4, "CBRequestManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/chartboost/sdk/impl/bb$c$a;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v6}, Lcom/chartboost/sdk/impl/ba;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded. Response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", body: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    const-string v0, "status"

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 279
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->g:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v3, "404 error from server"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    :goto_3
    move-object v1, v0

    move-object v0, v2

    .line 287
    goto :goto_0

    .line 281
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    if-eqz v3, :cond_4

    invoke-virtual {v3, v2, v0}, Lcom/chartboost/sdk/Libraries/g$a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 283
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v4, "Json response failed validation"

    invoke-direct {v1, v3, v4}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    .line 284
    const-string v3, "CBRequestManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Json response failed validation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_3

    .line 288
    :cond_2
    :try_start_2
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->c:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v2, "Response is not a valid json object"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 290
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 291
    :goto_4
    new-instance v2, Lcom/chartboost/sdk/Model/CBError;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_0

    .line 297
    :cond_3
    new-instance v0, Lcom/chartboost/sdk/impl/bb$a;

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/bb$a;-><init>(Lcom/chartboost/sdk/Model/CBError;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/n;->a(Lcom/chartboost/sdk/impl/s;)Lcom/chartboost/sdk/impl/n;

    move-result-object v0

    goto/16 :goto_1

    .line 290
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :cond_4
    move-object v0, v7

    goto :goto_3

    :cond_5
    move-object v1, v7

    goto/16 :goto_2
.end method

.method protected a(Lcom/chartboost/sdk/impl/bb$b;)V
    .locals 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->r()Lcom/chartboost/sdk/impl/ba$c;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->r()Lcom/chartboost/sdk/impl/ba$c;

    move-result-object v0

    invoke-static {p1}, Lcom/chartboost/sdk/impl/bb$b;->a(Lcom/chartboost/sdk/impl/bb$b;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba$c;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/ba;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bb$c;->a:Lcom/chartboost/sdk/impl/bb;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb;->b(Lcom/chartboost/sdk/impl/bb;)Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    invoke-static {}, Lcom/chartboost/sdk/impl/bb;->k()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V

    .line 309
    invoke-static {}, Lcom/chartboost/sdk/impl/bb;->k()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bb$c;->a:Lcom/chartboost/sdk/impl/bb;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v1

    invoke-static {p1}, Lcom/chartboost/sdk/impl/bb$b;->b(Lcom/chartboost/sdk/impl/bb$b;)Lcom/chartboost/sdk/impl/i;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/impl/bb;->a(Lcom/chartboost/sdk/impl/bb;Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V

    .line 318
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->m()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    .line 313
    invoke-static {}, Lcom/chartboost/sdk/impl/bb;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V

    .line 314
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->q()V

    .line 315
    const-string v0, "CBRequestManager"

    const-string v1, "### Removing track events sent to server..."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/chartboost/sdk/impl/bb;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Lcom/chartboost/sdk/impl/s;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 323
    if-nez p1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 328
    :cond_0
    instance-of v1, p1, Lcom/chartboost/sdk/impl/bb$a;

    if-eqz v1, :cond_2

    .line 329
    move-object v0, p1

    check-cast v0, Lcom/chartboost/sdk/impl/bb$a;

    move-object v1, v0

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bb$a;->a(Lcom/chartboost/sdk/impl/bb$a;)Lcom/chartboost/sdk/Model/CBError;

    move-result-object v1

    .line 334
    :goto_1
    sget-object v2, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    .line 336
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/i;->b:[B

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/i;->b:[B

    array-length v3, v3

    if-lez v3, :cond_1

    .line 338
    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/i;->b:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/e$a;->j(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 344
    :cond_1
    :goto_2
    iget-object v3, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    iget v3, v3, Lcom/chartboost/sdk/impl/i;->a:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 346
    new-instance v1, Lcom/chartboost/sdk/impl/bb$b;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/impl/bb$b;-><init>(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/i;)V

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/bb$c$a;->a(Lcom/chartboost/sdk/impl/bb$b;)V

    goto :goto_0

    .line 331
    :cond_2
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :catch_0
    move-exception v3

    .line 341
    const-string v4, "CBRequestManager"

    const-string v5, "unable to read error json"

    invoke-static {v4, v5, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 348
    :cond_3
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v3}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ba;->r()Lcom/chartboost/sdk/impl/ba$c;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 349
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v3}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ba;->r()Lcom/chartboost/sdk/impl/ba$c;

    move-result-object v3

    iget-object v4, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v4}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v4

    invoke-interface {v3, v2, v4, v1}, Lcom/chartboost/sdk/impl/ba$c;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/CBError;)V

    .line 352
    :cond_4
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ba;->h()Z

    move-result v2

    if-nez v2, :cond_5

    .line 353
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/chartboost/sdk/impl/ba;->d(Z)V

    .line 354
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/bb$c;->a:Lcom/chartboost/sdk/impl/bb;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v3}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v3

    iget-object v4, p1, Lcom/chartboost/sdk/impl/s;->a:Lcom/chartboost/sdk/impl/i;

    invoke-static {v2, v3, v4, v1, v6}, Lcom/chartboost/sdk/impl/bb;->a(Lcom/chartboost/sdk/impl/bb;Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/impl/i;Lcom/chartboost/sdk/Model/CBError;Z)V

    goto/16 :goto_0

    .line 356
    :cond_5
    invoke-static {}, Lcom/chartboost/sdk/impl/bb;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bb$c$a;->a:Lcom/chartboost/sdk/impl/bb$c;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bb$c;->a(Lcom/chartboost/sdk/impl/bb$c;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Lcom/chartboost/sdk/impl/bb$b;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/bb$c$a;->a(Lcom/chartboost/sdk/impl/bb$b;)V

    return-void
.end method

.method public i()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/chartboost/sdk/impl/a;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bb$c$a;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ba;->j()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 253
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 254
    :cond_1
    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c$a;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->b()Ljava/lang/String;

    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    .line 234
    const-string v0, "application/json; charset=utf-8"

    .line 235
    :cond_0
    return-object v0
.end method

.method public q()[B
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c$a;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->i()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 241
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c$a;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->i()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public s()Lcom/chartboost/sdk/impl/l$a;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$c$a;->b:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->n()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    return-object v0
.end method
