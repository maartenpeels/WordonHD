.class public Lcom/chartboost/sdk/impl/ae;
.super Lcom/chartboost/sdk/d;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/chartboost/sdk/impl/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/chartboost/sdk/impl/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/ae;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/chartboost/sdk/d;-><init>()V

    .line 30
    return-void
.end method

.method public static f()Lcom/chartboost/sdk/impl/ae;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/chartboost/sdk/impl/ae;->c:Lcom/chartboost/sdk/impl/ae;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/chartboost/sdk/impl/ae;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/ae;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/ae;->c:Lcom/chartboost/sdk/impl/ae;

    .line 39
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/ae;->c:Lcom/chartboost/sdk/impl/ae;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->a:Lcom/chartboost/sdk/Model/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/chartboost/sdk/Model/a;-><init>(Lcom/chartboost/sdk/Model/a$c;ZLjava/lang/String;Z)V

    return-object v0
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 2

    .prologue
    const-string v1, "videos"

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/ae;->b(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {p2}, Lcom/chartboost/sdk/impl/be;->c(Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/chartboost/sdk/impl/ae;->b:Ljava/lang/String;

    const-string v1, "Video is unavailable so cannot show the video impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 53
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1, p2}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 55
    invoke-static {p1}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 58
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->b()V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "videos"

    invoke-virtual {p2, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "videos"

    invoke-virtual {p2, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 64
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V

    goto :goto_0
.end method

.method protected b(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 2

    .prologue
    .line 44
    const-string v0, "media-type"

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected c()Lcom/chartboost/sdk/d$a;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/chartboost/sdk/impl/ae$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ae$1;-><init>(Lcom/chartboost/sdk/impl/ae;)V

    return-object v0
.end method

.method protected e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v1, "/interstitial/get"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/chartboost/sdk/impl/l$a;->c:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/l$a;)V

    .line 88
    sget-object v1, Lcom/chartboost/sdk/Model/b;->b:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 89
    const-string v1, "local-videos"

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ae;->g()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "interstitial"

    return-object v0
.end method

.method public g()Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 171
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 172
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->c()[Ljava/lang/String;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_0

    .line 174
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 175
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-object v0
.end method

.method protected i(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/chartboost/sdk/d;->i(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method protected l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v1, "/interstitial/show"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method public r(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ae;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->q:Z

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ae;->e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/impl/ba;Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method
