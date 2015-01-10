.class public Lcom/android/settings/notification/NotificationAccessSettings;
.super Lcom/android/settings/notification/ManagedServiceSettings;
.source "NotificationAccessSettings.java"


# static fields
.field private static final CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/notification/NotificationAccessSettings;->getNotificationListenerConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;-><init>()V

    return-void
.end method

.method public static getEnabledListenersCount(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledServicesCount(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getListenersCount(Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p0    # Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getServicesCount(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method

.method private static getNotificationListenerConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 2

    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/notification/ManagedServiceSettings$Config;-><init>()V

    sget-object v1, Lcom/android/settings/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    const-string v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    const-string v1, "android.service.notification.NotificationListenerService"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    const-string v1, "notification listener"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    const v1, 0x7f08093f

    iput v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->warningDialogTitle:I

    const v1, 0x7f080940

    iput v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->warningDialogSummary:I

    const v1, 0x7f08093e

    iput v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->emptyText:I

    return-object v0
.end method


# virtual methods
.method protected getConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    return-object v0
.end method
