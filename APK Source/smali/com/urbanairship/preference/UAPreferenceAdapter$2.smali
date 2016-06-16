.class Lcom/urbanairship/preference/UAPreferenceAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/urbanairship/preference/UAPreference$PreferenceType;

.field final synthetic b:Lcom/urbanairship/preference/UAPreferenceAdapter;


# direct methods
.method constructor <init>(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference$PreferenceType;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter$2;->b:Lcom/urbanairship/preference/UAPreferenceAdapter;

    iput-object p2, p0, Lcom/urbanairship/preference/UAPreferenceAdapter$2;->a:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter$2;->b:Lcom/urbanairship/preference/UAPreferenceAdapter;

    invoke-static {v0}, Lcom/urbanairship/preference/UAPreferenceAdapter;->a(Lcom/urbanairship/preference/UAPreferenceAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter$2;->a:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
