.class public final Lcom/google/android/gms/internal/jp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/jp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field adh:I

.field adi:Ljava/lang/String;

.field adj:D

.field adk:Ljava/lang/String;

.field adl:J

.field adm:I

.field private final xH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/jq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jp;->xH:I

    iput v1, p0, Lcom/google/android/gms/internal/jp;->adm:I

    iput v1, p0, Lcom/google/android/gms/internal/jp;->adh:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/jp;->adj:D

    return-void
.end method

.method constructor <init>(IILjava/lang/String;DLjava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jp;->xH:I

    iput p2, p0, Lcom/google/android/gms/internal/jp;->adh:I

    iput-object p3, p0, Lcom/google/android/gms/internal/jp;->adi:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/jp;->adj:D

    iput-object p6, p0, Lcom/google/android/gms/internal/jp;->adk:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/internal/jp;->adl:J

    iput p9, p0, Lcom/google/android/gms/internal/jp;->adm:I

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

    iget v0, p0, Lcom/google/android/gms/internal/jp;->xH:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jq;->a(Lcom/google/android/gms/internal/jp;Landroid/os/Parcel;I)V

    return-void
.end method
