.class Lcom/google/android/gms/tagmanager/cs$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cs;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/cq$c;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/ag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/l$a",
        "<",
        "Lcom/google/android/gms/tagmanager/cq$a;",
        "Lcom/google/android/gms/tagmanager/by",
        "<",
        "Lcom/google/android/gms/internal/d$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ZQ:Lcom/google/android/gms/tagmanager/cs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cs$1;->ZQ:Lcom/google/android/gms/tagmanager/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/cq$a;Lcom/google/android/gms/tagmanager/by;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/d$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d$a;->mF()I

    move-result v0

    return v0
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/google/android/gms/tagmanager/cq$a;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/android/gms/tagmanager/by;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/cs$1;->a(Lcom/google/android/gms/tagmanager/cq$a;Lcom/google/android/gms/tagmanager/by;)I

    move-result v0

    return v0
.end method
