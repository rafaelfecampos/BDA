/*Q1: Selecione o nome dos pacientes que foram atendidos no dia 09/02/2015, mostre o nome dos remedios se foram prescritos*/

select nome_paciente, nome_medicamento
from paciente p left join consulta c on p.ID_PACIENTE = c.ID_PACIENTE left join prescricao pr on c.ID_CONSULTA = pr.ID_CONSULTA
left join medicamento m on pr.ID_MEDICAMENTO = m.ID_MEDICAMENTO
where DATA_CONSULTA = "2015-02-09";


/*Q2: Selecione o nome dos pacientes e seu endereco, e mostre o médico o nome do médico que atendeu os pacientes e data do atendimento*/

select nome_paciente, nome_pais, nome_estado, nome_cidade,  nome_medico, data_consulta
from paciente p inner join consulta c on p.id_paciente=c.id_paciente
inner join medico m on c.id_medico = m.id_medico
inner join pais on p.id_pais = pais.id_pais
inner join estado e on p.id_estado = e.id_estado
inner join cidade ci on p.id_cidade = ci.id_cidade
order by nome_paciente asc;

/*Q3: Selecione os nomes do médicos que consultaram entre os dias 14/01/2015 e 04/09/2015*/
select distinct nome_medico
from medico
where id_medico in 
(select id_medico
from consulta
where data_consulta between "2015-01-14" and "2015-09-04");

/*Q4: Selecione o nome dos pacientes que consultaram pelo menos 2 vezes*/
select 