.class final Lcom/google/android/gms/internal/ei$d;
.super Lcom/google/android/gms/internal/ff$d;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateListResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ff",
        "<",
        "Lcom/google/android/gms/internal/ek;",
        ">.d<",
        "Lcom/google/android/gms/common/api/a$d",
        "<",
        "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
        ">;>;",
        "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;"
    }
.end annotation


# instance fields
.field final synthetic wI:Lcom/google/android/gms/internal/ei;

.field private final wJ:Lcom/google/android/gms/common/api/Status;

.field private final wL:Lcom/google/android/gms/appstate/AppStateBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ei;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ei$d;->wI:Lcom/google/android/gms/internal/ei;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ff$d;-><init>(Lcom/google/android/gms/internal/ff;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ei$d;->wJ:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/appstate/AppStateBuffer;

    invoke-direct {v0, p4}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei$d;->wL:Lcom/google/android/gms/appstate/AppStateBuffer;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/a$d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ei$d;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public getStateBuffer()Lcom/google/android/gms/appstate/AppStateBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ei$d;->wL:Lcom/google/android/gms/appstate/AppStateBuffer;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ei$d;->wJ:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
