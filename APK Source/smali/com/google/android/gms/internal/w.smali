.class Lcom/google/android/gms/internal/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/y;


# instance fields
.field private kU:Lcom/google/android/gms/internal/dz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/w;->kU:Lcom/google/android/gms/internal/dz;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ab;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isVisible"

    if-eqz p2, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/w;->kU:Lcom/google/android/gms/internal/dz;

    const-string v2, "onAdVisibilityChanged"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/dz;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method
