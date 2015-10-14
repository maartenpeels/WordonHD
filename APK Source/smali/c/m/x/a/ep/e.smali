.class public final Lc/m/x/a/ep/e;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field g:Landroid/graphics/Bitmap;

.field h:Ljava/lang/CharSequence;

.field i:I

.field j:I

.field k:Z

.field l:Lc/m/x/a/ep/l;

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field q:Ljava/util/ArrayList;

.field r:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/m/x/a/ep/e;->q:Ljava/util/ArrayList;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iput-object p1, p0, Lc/m/x/a/ep/e;->a:Landroid/content/Context;

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    const/4 v0, 0x0

    iput v0, p0, Lc/m/x/a/ep/e;->j:I

    return-void
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    return-void
.end method


# virtual methods
.method public final a()Lc/m/x/a/ep/e;
    .locals 5

    const/16 v2, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iput v2, v0, Landroid/app/Notification;->ledOnMS:I

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iput v2, v0, Landroid/app/Notification;->ledOffMS:I

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    iget-object v1, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iget-object v2, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, -0x2

    if-eqz v0, :cond_1

    move v0, v4

    :goto_1
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/Notification;->flags:I

    return-object p0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public final a(I)Lc/m/x/a/ep/e;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public final a(Landroid/app/PendingIntent;)Lc/m/x/a/ep/e;
    .locals 0

    iput-object p1, p0, Lc/m/x/a/ep/e;->d:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap;)Lc/m/x/a/ep/e;
    .locals 0

    iput-object p1, p0, Lc/m/x/a/ep/e;->g:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final a(Lc/m/x/a/ep/l;)Lc/m/x/a/ep/e;
    .locals 2

    iget-object v0, p0, Lc/m/x/a/ep/e;->l:Lc/m/x/a/ep/l;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lc/m/x/a/ep/e;->l:Lc/m/x/a/ep/l;

    iget-object v0, p0, Lc/m/x/a/ep/e;->l:Lc/m/x/a/ep/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/ep/e;->l:Lc/m/x/a/ep/l;

    iget-object v1, v0, Lc/m/x/a/ep/l;->d:Lc/m/x/a/ep/e;

    if-eq v1, p0, :cond_0

    iput-object p0, v0, Lc/m/x/a/ep/l;->d:Lc/m/x/a/ep/e;

    iget-object v1, v0, Lc/m/x/a/ep/l;->d:Lc/m/x/a/ep/e;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lc/m/x/a/ep/l;->d:Lc/m/x/a/ep/e;

    invoke-virtual {v1, v0}, Lc/m/x/a/ep/e;->a(Lc/m/x/a/ep/l;)Lc/m/x/a/ep/e;

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lc/m/x/a/ep/e;
    .locals 0

    iput-object p1, p0, Lc/m/x/a/ep/e;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final b()Lc/m/x/a/ep/e;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lc/m/x/a/ep/e;->c(I)V

    return-object p0
.end method

.method public final b(I)Lc/m/x/a/ep/e;
    .locals 2

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lc/m/x/a/ep/e;
    .locals 0

    iput-object p1, p0, Lc/m/x/a/ep/e;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final c()Lc/m/x/a/ep/e;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lc/m/x/a/ep/e;->c(I)V

    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;)Lc/m/x/a/ep/e;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/ep/e;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final d()Landroid/app/Notification;
    .locals 1

    invoke-static {}, Lc/m/x/a/ep/a;->a()Lc/m/x/a/ep/g;

    move-result-object v0

    invoke-interface {v0, p0}, Lc/m/x/a/ep/g;->a(Lc/m/x/a/ep/e;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
