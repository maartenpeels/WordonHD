.class public Lcom/chartboost/sdk/impl/af;
.super Lcom/chartboost/sdk/impl/ae;
.source "SourceFile"


# static fields
.field private static b:Lcom/chartboost/sdk/impl/af;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "CBRewardedVideo"

    sput-object v0, Lcom/chartboost/sdk/impl/af;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/ae;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/af;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/af;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/chartboost/sdk/d;->h(Lcom/chartboost/sdk/Model/a;)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/af;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/af;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method public static h()Lcom/chartboost/sdk/impl/af;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/chartboost/sdk/impl/af;->b:Lcom/chartboost/sdk/impl/af;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/chartboost/sdk/impl/af;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/af;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/af;->b:Lcom/chartboost/sdk/impl/af;

    .line 36
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/af;->b:Lcom/chartboost/sdk/impl/af;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/chartboost/sdk/impl/af;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/chartboost/sdk/Model/a;-><init>(Lcom/chartboost/sdk/Model/a$c;ZLjava/lang/String;Z)V

    return-object v0
.end method

.method protected b(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Lcom/chartboost/sdk/d$a;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/chartboost/sdk/impl/af$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/af$3;-><init>(Lcom/chartboost/sdk/impl/af;)V

    return-object v0
.end method

.method protected d(Lcom/chartboost/sdk/Model/a;)Z
    .locals 1

    .prologue
    .line 51
    invoke-static {p1}, Lcom/chartboost/sdk/impl/be;->b(Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v1, "/reward/get"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/chartboost/sdk/impl/l$a;->c:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/l$a;)V

    .line 58
    sget-object v1, Lcom/chartboost/sdk/Model/b;->b:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 59
    const-string v1, "local-videos"

    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/af;->g()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const-string v0, "rewarded-video"

    return-object v0
.end method

.method protected g(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->c(Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/chartboost/sdk/impl/af;->c:Ljava/lang/String;

    const-string v1, "Video not available in the cache, so cannot show rewarded video"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/af;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 80
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->b()V

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/ae;->g(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected h(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "ux"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 90
    const-string v1, "pre-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "confirm"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/af;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcom/chartboost/sdk/impl/af;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/af$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/chartboost/sdk/impl/af$1;-><init>(Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/ae;->h(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected i(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/ae;->l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    .line 66
    const-string v1, "/reward/show"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;)V

    .line 67
    return-object v0
.end method

.method protected s(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "ux"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 130
    const-string v1, "post-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "confirm"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/af;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/chartboost/sdk/Model/a;->l:Z

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcom/chartboost/sdk/impl/af;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/af$2;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/af$2;-><init>(Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/Libraries/e$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    :cond_0
    return-void
.end method
