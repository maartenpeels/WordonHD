.class public Lcom/google/android/gms/internal/ct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ct$a;
    }
.end annotation


# instance fields
.field private final kr:I

.field private final ks:I

.field protected final lC:Lcom/google/android/gms/internal/dz;

.field private final oT:Landroid/os/Handler;

.field private final oU:J

.field private oV:J

.field private oW:Lcom/google/android/gms/internal/ea$a;

.field protected oX:Z

.field protected oY:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ea$a;Lcom/google/android/gms/internal/dz;II)V
    .locals 9

    const-wide/16 v5, 0xc8

    const-wide/16 v7, 0x32

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ct;-><init>(Lcom/google/android/gms/internal/ea$a;Lcom/google/android/gms/internal/dz;IIJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ea$a;Lcom/google/android/gms/internal/dz;IIJJ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p5, p0, Lcom/google/android/gms/internal/ct;->oU:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ct;->oV:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ct;->oT:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ct;->lC:Lcom/google/android/gms/internal/dz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ct;->oW:Lcom/google/android/gms/internal/ea$a;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ct;->oX:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ct;->oY:Z

    iput p4, p0, Lcom/google/android/gms/internal/ct;->ks:I

    iput p3, p0, Lcom/google/android/gms/internal/ct;->kr:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ct;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ct;->kr:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ct;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ct;->ks:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ct;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ct;->oV:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ct;->oV:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ct;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ct;->oV:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ct;)Lcom/google/android/gms/internal/ea$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oW:Lcom/google/android/gms/internal/ea$a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ct;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ct;->oU:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ct;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oT:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/internal/ee;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->lC:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/dz;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->lC:Lcom/google/android/gms/internal/dz;

    iget-object v1, p1, Lcom/google/android/gms/internal/cz;->ol:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v5

    :goto_0
    iget-object v2, p1, Lcom/google/android/gms/internal/cz;->pm:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/dz;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/cz;->ol:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/dq;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/internal/cz;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ee;

    iget-object v1, p0, Lcom/google/android/gms/internal/ct;->lC:Lcom/google/android/gms/internal/dz;

    iget-object v2, p1, Lcom/google/android/gms/internal/cz;->pv:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ee;-><init>(Lcom/google/android/gms/internal/ct;Lcom/google/android/gms/internal/dz;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ct;->a(Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/internal/ee;)V

    return-void
.end method

.method public ba()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oT:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ct;->oU:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized bb()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ct;->oX:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bc()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ct;->oX:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ct;->oY:Z

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->lC:Lcom/google/android/gms/internal/dz;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ct;->bc()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oW:Lcom/google/android/gms/internal/ea$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ct;->lC:Lcom/google/android/gms/internal/dz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ea$a;->a(Lcom/google/android/gms/internal/dz;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ct$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ct;->lC:Lcom/google/android/gms/internal/dz;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ct$a;-><init>(Lcom/google/android/gms/internal/ct;Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ct$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
