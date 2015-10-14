.class Lcom/chartboost/sdk/impl/be$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/impl/be$b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/be$1;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/be$c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/be$c;Lcom/chartboost/sdk/impl/be$b;)Lcom/chartboost/sdk/impl/be$b;
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be$c;->a:Lcom/chartboost/sdk/impl/be$b;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/s;)V
    .locals 4

    .prologue
    .line 378
    instance-of v0, p1, Lcom/chartboost/sdk/impl/r;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/chartboost/sdk/impl/q;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/chartboost/sdk/impl/h;

    if-eqz v0, :cond_2

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$c;->a:Lcom/chartboost/sdk/impl/be$b;

    if-eqz v0, :cond_1

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be$c;->a:Lcom/chartboost/sdk/impl/be$b;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/be$b;->a(Lcom/chartboost/sdk/impl/be$b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$c;->a:Lcom/chartboost/sdk/impl/be$b;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/be$b;->b(Lcom/chartboost/sdk/impl/be$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be$c;->a:Lcom/chartboost/sdk/impl/be$b;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/be$b;->c(Lcom/chartboost/sdk/impl/be$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "cache"

    const-string v1, "miss"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be$c;->a:Lcom/chartboost/sdk/impl/be$b;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/be$b;->b(Lcom/chartboost/sdk/impl/be$b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->l()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$c;->a:Lcom/chartboost/sdk/impl/be$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be$c;->a:Lcom/chartboost/sdk/impl/be$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error downloading video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/be$c;->a:Lcom/chartboost/sdk/impl/be$b;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/be$b;->b(Lcom/chartboost/sdk/impl/be$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    :cond_2
    return-void
.end method
