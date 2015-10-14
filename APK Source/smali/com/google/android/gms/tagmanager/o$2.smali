.class Lcom/google/android/gms/tagmanager/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/o;->C(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Xj:Lcom/google/android/gms/tagmanager/o;

.field final synthetic Xk:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/o;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$2;->Xj:Lcom/google/android/gms/tagmanager/o;

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/o$2;->Xk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/tagmanager/Container;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/o$2;->Xk:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o$2;->Xj:Lcom/google/android/gms/tagmanager/o;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/gl;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/gl;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method
