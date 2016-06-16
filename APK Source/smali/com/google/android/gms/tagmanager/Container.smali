.class public Lcom/google/android/gms/tagmanager/Container;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/Container$1;,
        Lcom/google/android/gms/tagmanager/Container$b;,
        Lcom/google/android/gms/tagmanager/Container$a;,
        Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;,
        Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
    }
.end annotation


# instance fields
.field private final WJ:Ljava/lang/String;

.field private final WK:Lcom/google/android/gms/tagmanager/DataLayer;

.field private WL:Lcom/google/android/gms/tagmanager/cs;

.field private WM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;",
            ">;"
        }
    .end annotation
.end field

.field private WN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile WO:J

.field private volatile WP:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/c$j;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataLayer"    # Lcom/google/android/gms/tagmanager/DataLayer;
    .param p3, "containerId"    # Ljava/lang/String;
    .param p4, "lastRefreshTime"    # J
    .param p6, "resource"    # Lcom/google/android/gms/internal/c$j;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WM:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WN:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WP:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->WK:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->WJ:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/Container;->WO:J

    iget-object v0, p6, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/internal/c$f;)V

    iget-object v0, p6, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    if-eqz v0, :cond_0

    iget-object v0, p6, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a([Lcom/google/android/gms/internal/c$i;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cq$c;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataLayer"    # Lcom/google/android/gms/tagmanager/DataLayer;
    .param p3, "containerId"    # Ljava/lang/String;
    .param p4, "lastRefreshTime"    # J
    .param p6, "resource"    # Lcom/google/android/gms/tagmanager/cq$c;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WM:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WN:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WP:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->WK:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->WJ:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/Container;->WO:J

    invoke-direct {p0, p6}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/tagmanager/cq$c;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/c$f;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/cq;->b(Lcom/google/android/gms/internal/c$f;)Lcom/google/android/gms/tagmanager/cq$c;
    :try_end_0
    .catch Lcom/google/android/gms/tagmanager/cq$g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/tagmanager/cq$c;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not loading resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cq$g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/tagmanager/cq$c;)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$c;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WP:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->bq(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/ag;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/tagmanager/cs;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/Container;->WK:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v4, Lcom/google/android/gms/tagmanager/Container$a;

    invoke-direct {v4, p0, v2}, Lcom/google/android/gms/tagmanager/Container$a;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/Container$1;)V

    new-instance v5, Lcom/google/android/gms/tagmanager/Container$b;

    invoke-direct {v5, p0, v2}, Lcom/google/android/gms/tagmanager/Container$b;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/Container$1;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/cs;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/cq$c;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/ag;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/tagmanager/cs;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/gms/tagmanager/cs;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->WL:Lcom/google/android/gms/tagmanager/cs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a([Lcom/google/android/gms/internal/c$i;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->kd()Lcom/google/android/gms/tagmanager/cs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/cs;->e(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized kd()Lcom/google/android/gms/tagmanager/cs;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WL:Lcom/google/android/gms/tagmanager/cs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method bn(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WM:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->WM:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method bo(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WN:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->WN:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method bp(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->kd()Lcom/google/android/gms/tagmanager/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cs;->bp(Ljava/lang/String;)V

    return-void
.end method

.method bq(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/ag;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->kT()Lcom/google/android/gms/tagmanager/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->kU()Lcom/google/android/gms/tagmanager/cd$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/cd$a;->YV:Lcom/google/android/gms/tagmanager/cd$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cd$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bq;-><init>()V

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->kd()Lcom/google/android/gms/tagmanager/cs;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getBoolean called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lQ()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .end local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    :goto_0
    return v0

    .restart local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cs;->bR(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    check-cast p0, Lcom/google/android/gms/internal/d$a;

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->n(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getBoolean() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lQ()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WJ:Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->kd()Lcom/google/android/gms/tagmanager/cs;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getDouble called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lP()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .end local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    :goto_0
    return-wide v0

    .restart local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cs;->bR(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    check-cast p0, Lcom/google/android/gms/internal/d$a;

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->m(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getDouble() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lP()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getLastRefreshTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/Container;->WO:J

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->kd()Lcom/google/android/gms/tagmanager/cs;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getLong called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lO()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .end local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    :goto_0
    return-wide v0

    .restart local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cs;->bR(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    check-cast p0, Lcom/google/android/gms/internal/d$a;

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->l(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getLong() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lO()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->kd()Lcom/google/android/gms/tagmanager/cs;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getString called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lS()Ljava/lang/String;

    move-result-object v0

    .end local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cs;->bR(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/google/android/gms/tagmanager/Container;
    check-cast p0, Lcom/google/android/gms/internal/d$a;

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getString() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lS()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDefault()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method kc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WP:Ljava/lang/String;

    return-object v0
.end method

.method public registerFunctionCallMacroCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;)V
    .locals 2
    .param p1, "customMacroName"    # Ljava/lang/String;
    .param p2, "customMacroCallback"    # Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;

    .prologue
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Macro handler must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WM:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->WM:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerFunctionCallTagCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;)V
    .locals 2
    .param p1, "customTagName"    # Ljava/lang/String;
    .param p2, "customTagCallback"    # Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;

    .prologue
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tag callback must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WN:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->WN:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WL:Lcom/google/android/gms/tagmanager/cs;

    return-void
.end method

.method public unregisterFunctionCallMacroCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "customMacroName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WM:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->WM:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterFunctionCallTagCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "customTagName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WN:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->WN:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
