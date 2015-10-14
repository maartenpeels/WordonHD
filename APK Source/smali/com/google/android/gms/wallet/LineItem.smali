.class public final Lcom/google/android/gms/wallet/LineItem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/LineItem$1;,
        Lcom/google/android/gms/wallet/LineItem$Builder;,
        Lcom/google/android/gms/wallet/LineItem$Role;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/LineItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field abc:Ljava/lang/String;

.field abd:Ljava/lang/String;

.field abv:Ljava/lang/String;

.field abw:Ljava/lang/String;

.field abx:I

.field description:Ljava/lang/String;

.field private final xH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/i;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/LineItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->xH:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->abx:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "quantity"    # Ljava/lang/String;
    .param p4, "unitPrice"    # Ljava/lang/String;
    .param p5, "totalPrice"    # Ljava/lang/String;
    .param p6, "role"    # I
    .param p7, "currencyCode"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/LineItem;->xH:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/LineItem;->abv:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/LineItem;->abw:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/LineItem;->abc:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/wallet/LineItem;->abx:I

    iput-object p7, p0, Lcom/google/android/gms/wallet/LineItem;->abd:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/LineItem$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/LineItem;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/LineItem;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/LineItem$Builder;-><init>(Lcom/google/android/gms/wallet/LineItem;Lcom/google/android/gms/wallet/LineItem$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->abd:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->abv:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/LineItem;->abx:I

    return v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->abc:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->abw:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/LineItem;->xH:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/i;->a(Lcom/google/android/gms/wallet/LineItem;Landroid/os/Parcel;I)V

    return-void
.end method
