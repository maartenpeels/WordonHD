.class Lcom/google/android/gms/tagmanager/o;
.super Lcom/google/android/gms/common/api/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/o$d;,
        Lcom/google/android/gms/tagmanager/o$c;,
        Lcom/google/android/gms/tagmanager/o$b;,
        Lcom/google/android/gms/tagmanager/o$a;,
        Lcom/google/android/gms/tagmanager/o$e;,
        Lcom/google/android/gms/tagmanager/o$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$a",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final AS:Landroid/os/Looper;

.field private final WJ:Ljava/lang/String;

.field private WO:J

.field private final WW:Lcom/google/android/gms/tagmanager/TagManager;

.field private final WZ:Lcom/google/android/gms/tagmanager/o$d;

.field private final Wv:Lcom/google/android/gms/internal/gl;

.field private final Xa:Lcom/google/android/gms/tagmanager/cf;

.field private final Xb:I

.field private Xc:Lcom/google/android/gms/tagmanager/o$f;

.field private volatile Xd:Lcom/google/android/gms/tagmanager/n;

.field private volatile Xe:Z

.field private Xf:Lcom/google/android/gms/internal/c$j;

.field private Xg:Ljava/lang/String;

.field private Xh:Lcom/google/android/gms/tagmanager/o$e;

.field private Xi:Lcom/google/android/gms/tagmanager/o$a;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/o$f;Lcom/google/android/gms/tagmanager/o$e;Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/tagmanager/cf;)V
    .locals 2

    if-nez p3, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/o;->WW:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->AS:Landroid/os/Looper;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/o;->WJ:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/tagmanager/o;->Xb:I

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/o;->Xc:Lcom/google/android/gms/tagmanager/o$f;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/o;->Xh:Lcom/google/android/gms/tagmanager/o$e;

    new-instance v0, Lcom/google/android/gms/tagmanager/o$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/o$d;-><init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->WZ:Lcom/google/android/gms/tagmanager/o$d;

    new-instance v0, Lcom/google/android/gms/internal/c$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xf:Lcom/google/android/gms/internal/c$j;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/o;->Wv:Lcom/google/android/gms/internal/gl;

    iput-object p9, p0, Lcom/google/android/gms/tagmanager/o;->Xa:Lcom/google/android/gms/tagmanager/cf;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->kk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->kT()Lcom/google/android/gms/tagmanager/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->kV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/o;->br(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p3

    goto :goto_0

    :cond_2
    move-object v0, p3

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)V
    .locals 15

    new-instance v14, Lcom/google/android/gms/tagmanager/cp;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v12, Lcom/google/android/gms/tagmanager/co;

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/co;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;)V

    invoke-static {}, Lcom/google/android/gms/internal/gn;->ft()Lcom/google/android/gms/internal/gl;

    move-result-object v13

    new-instance v4, Lcom/google/android/gms/tagmanager/bf;

    const/16 v5, 0x1e

    const-wide/32 v6, 0xdbba0

    const-wide/16 v8, 0x1388

    const-string v10, "refreshing"

    invoke-static {}, Lcom/google/android/gms/internal/gn;->ft()Lcom/google/android/gms/internal/gl;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/tagmanager/bf;-><init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/gl;)V

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object v11, v14

    move-object v14, v4

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/tagmanager/o;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/o$f;Lcom/google/android/gms/tagmanager/o$e;Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/tagmanager/cf;)V

    return-void
.end method

.method private C(Z)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xc:Lcom/google/android/gms/tagmanager/o$f;

    new-instance v1, Lcom/google/android/gms/tagmanager/o$b;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/o$b;-><init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$f;->a(Lcom/google/android/gms/tagmanager/bg;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xh:Lcom/google/android/gms/tagmanager/o$e;

    new-instance v1, Lcom/google/android/gms/tagmanager/o$c;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/o$c;-><init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$e;->a(Lcom/google/android/gms/tagmanager/bg;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xc:Lcom/google/android/gms/tagmanager/o$f;

    iget v1, p0, Lcom/google/android/gms/tagmanager/o;->Xb:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$f;->ca(I)Lcom/google/android/gms/tagmanager/cq$c;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lcom/google/android/gms/tagmanager/n;

    iget-object v8, p0, Lcom/google/android/gms/tagmanager/o;->WW:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v9, p0, Lcom/google/android/gms/tagmanager/o;->AS:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->WW:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->WJ:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cq$c;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->WZ:Lcom/google/android/gms/tagmanager/o$d;

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/o;->Xd:Lcom/google/android/gms/tagmanager/n;

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/o$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/o$2;-><init>(Lcom/google/android/gms/tagmanager/o;Z)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xi:Lcom/google/android/gms/tagmanager/o$a;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->kk()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xh:Lcom/google/android/gms/tagmanager/o$e;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/tagmanager/o$e;->d(JLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xc:Lcom/google/android/gms/tagmanager/o$f;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/o$f;->km()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/gl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Wv:Lcom/google/android/gms/internal/gl;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/google/android/gms/internal/c$j;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xc:Lcom/google/android/gms/tagmanager/o$f;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/it$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/it$a;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/o;->WO:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/it$a;->aaY:J

    new-instance v1, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v1}, Lcom/google/android/gms/internal/c$f;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    iput-object p1, v0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Xc:Lcom/google/android/gms/tagmanager/o$f;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/o$f;->b(Lcom/google/android/gms/internal/it$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/gms/internal/c$j;JZ)V
    .locals 8

    const-wide/32 v6, 0x2932e00

    monitor-enter p0

    if-eqz p4, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/o;->Xe:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/o;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xd:Lcom/google/android/gms/tagmanager/n;

    if-nez v0, :cond_2

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o;->Xf:Lcom/google/android/gms/internal/c$j;

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/o;->WO:J

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x2932e00

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/o;->WO:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/o;->Wv:Lcom/google/android/gms/internal/gl;

    invoke-interface {v6}, Lcom/google/android/gms/internal/gl;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/o;->t(J)V

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->WW:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->WJ:Ljava/lang/String;

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/c$j;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Xd:Lcom/google/android/gms/tagmanager/n;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/tagmanager/n;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->WW:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->AS:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/o;->WZ:Lcom/google/android/gms/tagmanager/o$d;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Xd:Lcom/google/android/gms/tagmanager/n;

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/o;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Xi:Lcom/google/android/gms/tagmanager/o$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/o$a;->b(Lcom/google/android/gms/tagmanager/Container;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xd:Lcom/google/android/gms/tagmanager/n;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/common/api/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Xd:Lcom/google/android/gms/tagmanager/n;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/n;->a(Lcom/google/android/gms/tagmanager/Container;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/o;->t(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/internal/c$j;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/internal/c$j;JZ)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/o;->Xe:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/c$j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xf:Lcom/google/android/gms/internal/c$j;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/tagmanager/o;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/o;->WO:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/tagmanager/o;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->kk()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xd:Lcom/google/android/gms/tagmanager/n;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/cf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xa:Lcom/google/android/gms/tagmanager/cf;

    return-object v0
.end method

.method private kk()Z
    .locals 3

    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->kT()Lcom/google/android/gms/tagmanager/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->kU()Lcom/google/android/gms/tagmanager/cd$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/cd$a;->YU:Lcom/google/android/gms/tagmanager/cd$a;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->kU()Lcom/google/android/gms/tagmanager/cd$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/cd$a;->YV:Lcom/google/android/gms/tagmanager/cd$a;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->WJ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized t(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xh:Lcom/google/android/gms/tagmanager/o$e;

    if-nez v0, :cond_0

    const-string v0, "Refresh requested, but no network load scheduler."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xh:Lcom/google/android/gms/tagmanager/o$e;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->Xf:Lcom/google/android/gms/internal/c$j;

    iget-object v1, v1, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/o$e;->d(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected ac(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xd:Lcom/google/android/gms/tagmanager/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xd:Lcom/google/android/gms/tagmanager/n;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->By:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_1

    const-string v0, "timer expired: setting result to failure"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/n;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method declared-synchronized br(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o;->Xg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xh:Lcom/google/android/gms/tagmanager/o$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xh:Lcom/google/android/gms/tagmanager/o$e;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/o$e;->bu(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/o;->ac(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized ke()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public kh()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->Xc:Lcom/google/android/gms/tagmanager/o$f;

    iget v1, p0, Lcom/google/android/gms/tagmanager/o;->Xb:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$f;->ca(I)Lcom/google/android/gms/tagmanager/cq$c;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->WW:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->WJ:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cq$c;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/n;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->WW:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->AS:Landroid/os/Looper;

    new-instance v4, Lcom/google/android/gms/tagmanager/o$1;

    invoke-direct {v4, p0}, Lcom/google/android/gms/tagmanager/o$1;-><init>(Lcom/google/android/gms/tagmanager/o;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    iput-object v7, p0, Lcom/google/android/gms/tagmanager/o;->Xh:Lcom/google/android/gms/tagmanager/o$e;

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/o;->Xc:Lcom/google/android/gms/tagmanager/o$f;

    return-void

    :cond_0
    const-string v0, "Default was requested, but no default container was found"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/o;->ac(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method

.method public ki()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/o;->C(Z)V

    return-void
.end method

.method public kj()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/o;->C(Z)V

    return-void
.end method
