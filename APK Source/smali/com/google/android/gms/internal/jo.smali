.class public final Lcom/google/android/gms/internal/jo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/jo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field abJ:Lcom/google/android/gms/internal/ju;

.field adg:Lcom/google/android/gms/internal/jp;

.field label:Ljava/lang/String;

.field type:Ljava/lang/String;

.field private final xH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/jr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jo;->xH:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/jp;Ljava/lang/String;Lcom/google/android/gms/internal/ju;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jo;->xH:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jo;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/jo;->adg:Lcom/google/android/gms/internal/jp;

    iput-object p4, p0, Lcom/google/android/gms/internal/jo;->type:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/jo;->abJ:Lcom/google/android/gms/internal/ju;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jo;->xH:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jr;->a(Lcom/google/android/gms/internal/jo;Landroid/os/Parcel;I)V

    return-void
.end method
