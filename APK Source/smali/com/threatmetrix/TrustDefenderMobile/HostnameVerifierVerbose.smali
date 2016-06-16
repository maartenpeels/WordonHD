.class public Lcom/threatmetrix/TrustDefenderMobile/HostnameVerifierVerbose;
.super Ljava/lang/Object;
.source "HostnameVerifierVerbose.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;


# direct methods
.method public constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;)V
    .locals 0
    .param p1, "requestHandlerError"    # Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/HostnameVerifierVerbose;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    .line 17
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HostnameVerifierVerbose;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    iput-boolean v1, v0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->m_verification_error:Z

    .line 25
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
