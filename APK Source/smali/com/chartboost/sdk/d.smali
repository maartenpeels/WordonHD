.class public abstract Lcom/chartboost/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/d$a;
    }
.end annotation


# static fields
.field protected static a:Landroid/os/Handler;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Model/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/chartboost/sdk/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/d;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    .line 47
    return-void
.end method

.method private final declared-synchronized s(Lcom/chartboost/sdk/Model/a;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 165
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->n(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Request already in process for impression with location"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v5

    .line 171
    :goto_0
    monitor-exit p0

    return v0

    .line 170
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->p(Lcom/chartboost/sdk/Model/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 171
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 405
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->q(Lcom/chartboost/sdk/Model/a;)V

    .line 95
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 96
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->d:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 97
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 5

    .prologue
    const-string v4, "Invalid status code"

    const-string v3, "status"

    .line 308
    const-string v0, "status"

    invoke-virtual {p2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 321
    :goto_0
    return-void

    .line 312
    :cond_0
    const-string v0, "status"

    invoke-virtual {p2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 313
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {p2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 320
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/Model/a$a;

    invoke-virtual {p1, p2, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/Model/a$a;)V

    goto :goto_0
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 178
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 185
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 187
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/d$a;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 188
    return-void

    .line 181
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected final a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 329
    const-string v0, "location"

    iget-object v1, p2, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/a;->f:Z

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "cache"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/ba;->b(Z)V

    .line 334
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getValidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/ba;->b(Landroid/content/Context;)V

    .line 336
    iput-boolean v2, p2, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 337
    new-instance v0, Lcom/chartboost/sdk/d$3;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/sdk/d$3;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V

    .line 356
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chartboost/sdk/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    sget-object v1, Lcom/chartboost/sdk/d;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/d$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/chartboost/sdk/d$1;-><init>(Lcom/chartboost/sdk/d;Ljava/lang/String;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final b()Lcom/chartboost/sdk/d$a;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    if-nez v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/d$a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->c(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected final b(Lcom/chartboost/sdk/Model/a;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->h(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 112
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cbPrefSessionCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 108
    if-ne v0, v3, :cond_1

    .line 109
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    move v0, v3

    .line 110
    goto :goto_0

    :cond_1
    move v0, v2

    .line 112
    goto :goto_0
.end method

.method protected abstract c()Lcom/chartboost/sdk/d$a;
.end method

.method protected c(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->f(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->g(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/d;->s(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-nez v0, :cond_2

    .line 130
    invoke-static {}, Lcom/chartboost/sdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->i:Z

    .line 132
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 136
    :cond_2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 137
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/a;)V

    .line 145
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Landroid/content/Context;
    .locals 4

    .prologue
    .line 442
    :try_start_0
    const-class v1, Lcom/chartboost/sdk/Chartboost;

    const-string v2, "getValidContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 443
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 444
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    move-object p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 449
    :goto_0
    return-object v1

    .line 445
    :catch_0
    move-exception v1

    .line 446
    const-string v2, "Error encountered getting valid context"

    invoke-static {p0, v2, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->throwProguardError(Ljava/lang/Exception;)V

    .line 449
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;

    .line 391
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->m(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Lcom/chartboost/sdk/Model/a;)Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-void
.end method

.method protected final f(Lcom/chartboost/sdk/Model/a;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-static {}, Lcom/chartboost/sdk/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    move v0, v2

    .line 215
    :goto_0
    return v0

    .line 203
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 204
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    move v0, v2

    .line 206
    goto :goto_0

    .line 210
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/az;->a()Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/az;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    move v0, v2

    .line 212
    goto :goto_0

    .line 215
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected g(Lcom/chartboost/sdk/Model/a;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 219
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 220
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-eq v0, v1, :cond_0

    move v0, v3

    .line 221
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/chartboost/sdk/d$a;->f(Lcom/chartboost/sdk/Model/a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    :goto_1
    return-void

    :cond_0
    move v0, v4

    .line 220
    goto :goto_0

    .line 224
    :cond_1
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->d:Lcom/chartboost/sdk/Model/a$b;

    if-ne v1, v2, :cond_3

    move v1, v3

    .line 225
    :goto_2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->i(Lcom/chartboost/sdk/Model/a;)V

    .line 227
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->e()Lcom/chartboost/sdk/e;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {v2}, Lcom/chartboost/sdk/e;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 230
    invoke-virtual {v2, p1, v4}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 237
    :cond_2
    if-eqz v0, :cond_5

    .line 238
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->h(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_1

    :cond_3
    move v1, v4

    .line 224
    goto :goto_2

    .line 231
    :cond_4
    iget-boolean v2, p1, Lcom/chartboost/sdk/Model/a;->i:Z

    if-eqz v2, :cond_2

    .line 232
    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 240
    :cond_5
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_1
.end method

.method protected h(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 247
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 248
    return-void
.end method

.method protected i(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->j(Lcom/chartboost/sdk/Model/a;)V

    .line 254
    return-void
.end method

.method public final j(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->g:Z

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->g:Z

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 266
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->k(Lcom/chartboost/sdk/Model/a;)V

    .line 267
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 268
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final k(Lcom/chartboost/sdk/Model/a;)V
    .locals 4

    .prologue
    const-string v2, "cached"

    const-string v3, "ad_id"

    .line 272
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    .line 273
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->b(Landroid/content/Context;)V

    .line 276
    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-eqz v1, :cond_1

    .line 277
    const-string v1, "cached"

    const-string v1, "1"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    :goto_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "ad_id"

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_0

    .line 283
    const-string v2, "ad_id"

    invoke-virtual {v0, v3, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/d$2;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/d$2;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V

    .line 292
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void

    .line 279
    :cond_1
    const-string v1, "cached"

    const-string v1, "0"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
.end method

.method protected final m(Lcom/chartboost/sdk/Model/a;)Z
    .locals 5

    .prologue
    .line 299
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p1, Lcom/chartboost/sdk/Model/a;->a:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 300
    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized n(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;
    .locals 2

    .prologue
    .line 362
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized o(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 370
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_0
    monitor-exit p0

    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized p(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 376
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_0
    monitor-exit p0

    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected q(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/chartboost/sdk/d;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    return-void
.end method

.method public r(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 466
    return-void
.end method
