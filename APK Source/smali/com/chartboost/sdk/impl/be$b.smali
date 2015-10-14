.class Lcom/chartboost/sdk/impl/be$b;
.super Lcom/chartboost/sdk/impl/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/l",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/chartboost/sdk/impl/be$c;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 322
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/l;-><init>(ILjava/lang/String;Lcom/chartboost/sdk/impl/n$a;)V

    .line 323
    iput-object p4, p0, Lcom/chartboost/sdk/impl/be$b;->a:Ljava/lang/String;

    .line 324
    iput-object p2, p0, Lcom/chartboost/sdk/impl/be$b;->c:Ljava/lang/String;

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/be$b;->b:J

    .line 326
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/be$b;)J
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/be$b;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/be$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/be$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/chartboost/sdk/impl/i;)Lcom/chartboost/sdk/impl/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/i;",
            ")",
            "Lcom/chartboost/sdk/impl/n",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 334
    if-eqz p1, :cond_0

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/chartboost/sdk/impl/be$b;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be$b;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video download Success. Storing video in cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->h()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/i;->b:[B

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;[B)V

    .line 339
    const-string v0, "cache"

    const-string v1, "hit"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be$b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->i()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/chartboost/sdk/impl/be;->j()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/chartboost/sdk/impl/be;->k()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->k()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 346
    invoke-static {v4}, Lcom/chartboost/sdk/impl/be;->c(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;

    .line 347
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/be$b$1;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/be$b$1;-><init>(Lcom/chartboost/sdk/impl/be$b;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->j()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {}, Lcom/chartboost/sdk/impl/be;->i()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 357
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->j()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 358
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->i()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 359
    sget-object v0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->b(Lcom/chartboost/sdk/impl/be$a;)Lcom/chartboost/sdk/impl/be$a;

    .line 360
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 363
    :cond_2
    invoke-static {v4, v4}, Lcom/chartboost/sdk/impl/n;->a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/b$a;)Lcom/chartboost/sdk/impl/n;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public s()Lcom/chartboost/sdk/impl/l$a;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/chartboost/sdk/impl/l$a;->a:Lcom/chartboost/sdk/impl/l$a;

    return-object v0
.end method
