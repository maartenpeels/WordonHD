.class public final Lcom/chartboost/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/c$4;,
        Lcom/chartboost/sdk/c$a;,
        Lcom/chartboost/sdk/c$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Lcom/chartboost/sdk/c;


# instance fields
.field public a:Lcom/chartboost/sdk/Model/a$a;

.field public b:Lcom/chartboost/sdk/impl/bc$a;

.field private e:Lcom/chartboost/sdk/impl/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/c;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/chartboost/sdk/c$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/c$2;-><init>(Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/Model/a$a;

    .line 231
    new-instance v0, Lcom/chartboost/sdk/c$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/c$3;-><init>(Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/impl/bc$a;

    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/impl/bc$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->a(Lcom/chartboost/sdk/impl/bc$a;)Lcom/chartboost/sdk/impl/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/impl/bc;

    .line 36
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/c;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/chartboost/sdk/c;

    invoke-direct {v0}, Lcom/chartboost/sdk/c;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c;

    .line 46
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/a;)V

    return-void
.end method

.method private static declared-synchronized b(Lcom/chartboost/sdk/Model/a;)V
    .locals 10

    .prologue
    const/high16 v9, 0x447a0000    # 1000.0f

    const-string v0, "playback_time"

    const-string v0, "currency-name"

    .line 267
    const-class v1, Lcom/chartboost/sdk/c;

    monitor-enter v1

    const/4 v0, 0x0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->l()Lcom/chartboost/sdk/f$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->x()Lcom/chartboost/sdk/f;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ai;

    .line 271
    :cond_0
    new-instance v2, Lcom/chartboost/sdk/impl/ba;

    const-string v3, "/api/video-complete"

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 272
    const-string v3, "location"

    iget-object v4, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    const-string v3, "reward"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    const-string v5, "reward"

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-string v3, "currency-name"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    const-string v5, "currency-name"

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    const-string v3, "ad_id"

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    const-string v3, "force_close"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->v()I

    move-result v3

    int-to-float v3, v3

    .line 279
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->u()I

    move-result v0

    int-to-float v0, v0

    .line 280
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TotalDuration: %f PlaybackTime: %f"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    const-string v4, "total_time"

    div-float v5, v0, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    .line 284
    const-string v3, "playback_time"

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/ba;->a(Z)V

    .line 289
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ba;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit v1

    return-void

    .line 286
    :cond_2
    :try_start_1
    const-string v0, "playback_time"

    div-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a;)V
    .locals 4

    .prologue
    .line 322
    .line 323
    if-eqz p2, :cond_0

    .line 324
    sget-object v0, Lcom/chartboost/sdk/c$4;->a:[I

    iget-object v1, p2, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/a;->i:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-static {p2}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 331
    :pswitch_1
    invoke-static {p2}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_0

    .line 338
    sget-object v1, Lcom/chartboost/sdk/c;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error onActivityStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/a$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/chartboost/sdk/c;->e:Lcom/chartboost/sdk/impl/bc;

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/chartboost/sdk/impl/bc;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/c$b;)V

    .line 56
    return-void
.end method

.method public final b(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/chartboost/sdk/c$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/chartboost/sdk/c$1;-><init>(Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V

    .line 101
    sput-object v0, Lcom/chartboost/sdk/b;->c:Lcom/chartboost/sdk/c$a;

    .line 103
    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p0, p1, p2, p3}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didPauseClickForConfirmation()V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->o:Z

    goto :goto_0
.end method

.method protected final b()Z
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/Model/a$a;

    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/Model/a$a;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final c()Lcom/chartboost/sdk/Model/a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 299
    if-nez v0, :cond_0

    move-object v0, v1

    .line 300
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    .line 299
    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->d()Lcom/chartboost/sdk/impl/bq;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    goto :goto_1
.end method

.method public d()Lcom/chartboost/sdk/impl/ba;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v1, "/api/click"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->c()Landroid/app/Activity;

    move-result-object v1

    .line 311
    if-nez v1, :cond_0

    .line 312
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getValidContext()Landroid/content/Context;

    move-result-object v1

    .line 313
    :cond_0
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->b(Landroid/content/Context;)V

    .line 314
    return-object v0
.end method
