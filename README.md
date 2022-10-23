# Дипломная работа для курса DevOps от Нетологии в Яндекс облаке

1. Зарегистрировать доменное имя (любое на ваш выбор в любой доменной зоне).
    Зарегистрировал доменное имя `ev-gen.info`. В настройках у регистратора в разделе DNS указал сервера Яндекса.
![domain-registration](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/domain-registration.png)

1. Подготовить инфраструктуру с помощью Terraform на базе облачного провайдера YandexCloud.

Подготовил, описал все ресурсы в папке terraform. Сети, подсети, DNS-зону, dns-записи и виртуальные машины.

[](yandex-vm-list.png)
[](yandex-dns.png)

1. Настроить внешний Reverse Proxy на основе Nginx и LetsEncrypt.

Настроил, указал все upstreams.
[](gitlab-cert.png)
[](wordpress-cert.png)
[](alertmanager-cert.png)
[](grafana-cert.png)
[](prometheus-cert.png)

1. Настроить кластер MySQL.

Настроил.
[](mysql-replication-status.png)
[](mysql-dbs-list.png)

1. Установить WordPress.

Установил.
[](wordpress-cert.png)

1. Развернуть Gitlab CE и Gitlab Runner.

Развернул

[](gitlab-cert.png)
[](gitlab-runner.png)

1. Настроить CI/CD для автоматического развёртывания приложения.

Еще пока нет

1. Настроить мониторинг инфраструктуры с помощью стека: Prometheus, Alert Manager и Grafana.

[](prometheus-status.png)
[](alertmanager-status.png)
[](grafana-dashboard.png)
