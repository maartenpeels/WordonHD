.class Lcom/urbanairship/location/LocationService$ProviderListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/urbanairship/location/LocationService;


# direct methods
.method private constructor <init>(Lcom/urbanairship/location/LocationService;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/location/LocationService$ProviderListener;->a:Lcom/urbanairship/location/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/location/LocationService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService$ProviderListener;-><init>(Lcom/urbanairship/location/LocationService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location provider disabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$ProviderListener;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->b(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current provider ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") disabled, resetting providers."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$ProviderListener;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->c(Lcom/urbanairship/location/LocationService;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$ProviderListener;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->d(Lcom/urbanairship/location/LocationService;)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location provider enabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$ProviderListener;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->b(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$ProviderListener;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->e(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$ProviderListener;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->b(Lcom/urbanairship/location/LocationService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Best provider ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") now available; resetting providers."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$ProviderListener;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->a(Lcom/urbanairship/location/LocationService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/urbanairship/location/LocationService$ProviderListener;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0}, Lcom/urbanairship/location/LocationService;->d(Lcom/urbanairship/location/LocationService;)V

    :cond_2
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
